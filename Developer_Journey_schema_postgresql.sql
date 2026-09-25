-- Developer Journey 2.0
-- PostgreSQL schema inicial para implementação.
-- As respostas corretas devem permanecer no backend e nunca ser serializadas
-- para o frontend antes da submissão.

CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE users (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    name text NOT NULL,
    email text NOT NULL UNIQUE,
    password_hash text NOT NULL,
    role text NOT NULL DEFAULT 'student' CHECK (role IN ('student','teacher','admin')),
    jxp bigint NOT NULL DEFAULT 0 CHECK (jxp >= 0),
    level integer NOT NULL DEFAULT 1 CHECK (level >= 1),
    current_streak integer NOT NULL DEFAULT 0 CHECK (current_streak >= 0),
    longest_streak integer NOT NULL DEFAULT 0 CHECK (longest_streak >= 0),
    last_activity_at timestamptz,
    created_at timestamptz NOT NULL DEFAULT now(),
    updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE categories (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    name text NOT NULL,
    slug text NOT NULL UNIQUE,
    description text,
    icon text,
    color text,
    created_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE skills (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    category_id uuid NOT NULL REFERENCES categories(id) ON DELETE RESTRICT,
    name text NOT NULL,
    slug text NOT NULL,
    description text,
    active boolean NOT NULL DEFAULT true,
    created_at timestamptz NOT NULL DEFAULT now(),
    UNIQUE(category_id, slug)
);

CREATE TABLE skill_prerequisites (
    skill_id uuid NOT NULL REFERENCES skills(id) ON DELETE CASCADE,
    prerequisite_skill_id uuid NOT NULL REFERENCES skills(id) ON DELETE CASCADE,
    minimum_mastery numeric(5,2) NOT NULL DEFAULT 40 CHECK (minimum_mastery BETWEEN 0 AND 100),
    PRIMARY KEY (skill_id, prerequisite_skill_id),
    CHECK (skill_id <> prerequisite_skill_id)
);

CREATE TABLE questions (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    public_id text NOT NULL UNIQUE,
    category_id uuid NOT NULL REFERENCES categories(id) ON DELETE RESTRICT,
    level text NOT NULL CHECK (level IN ('beginner','intermediate','advanced')),
    difficulty smallint NOT NULL CHECK (difficulty BETWEEN 1 AND 5),
    type text NOT NULL CHECK (type IN ('multiple_choice','true_false','code_output','find_bug','fill_code','order_steps','match','code_review','scenario','terminal')),
    cognitive_level text CHECK (cognitive_level IN ('remember','understand','apply','analyze','evaluate','create')),
    objective text NOT NULL,
    question_text text NOT NULL,
    code text,
    explanation text NOT NULL,
    common_mistake text,
    recommended_practice text,
    locale text NOT NULL DEFAULT 'pt-BR',
    xp smallint NOT NULL DEFAULT 5 CHECK (xp >= 0),
    estimated_time_seconds integer CHECK (estimated_time_seconds >= 5),
    version integer NOT NULL DEFAULT 1 CHECK (version >= 1),
    status text NOT NULL DEFAULT 'draft' CHECK (status IN ('draft','draft_editorial_review','editorial_review','technical_review','approved','published','retired')),
    active boolean NOT NULL DEFAULT true,
    source text,
    created_at timestamptz NOT NULL DEFAULT now(),
    updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE question_options (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    question_id uuid NOT NULL REFERENCES questions(id) ON DELETE CASCADE,
    option_key text NOT NULL,
    option_text text NOT NULL,
    position integer NOT NULL,
    UNIQUE(question_id, option_key),
    UNIQUE(question_id, position)
);

-- Acesso somente pelo backend de correção.
CREATE TABLE question_answer_keys (
    question_id uuid PRIMARY KEY REFERENCES questions(id) ON DELETE CASCADE,
    answer_payload jsonb NOT NULL,
    grading_config jsonb NOT NULL DEFAULT '{}'::jsonb,
    updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE question_versions (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    question_id uuid NOT NULL REFERENCES questions(id) ON DELETE CASCADE,
    version integer NOT NULL CHECK (version >= 1),
    payload_json jsonb NOT NULL,
    changed_by uuid REFERENCES users(id) ON DELETE SET NULL,
    change_reason text,
    created_at timestamptz NOT NULL DEFAULT now(),
    UNIQUE(question_id, version)
);

CREATE TABLE question_skills (
    question_id uuid NOT NULL REFERENCES questions(id) ON DELETE CASCADE,
    skill_id uuid NOT NULL REFERENCES skills(id) ON DELETE CASCADE,
    weight numeric(4,3) NOT NULL DEFAULT 1 CHECK (weight > 0 AND weight <= 1),
    PRIMARY KEY(question_id, skill_id)
);

CREATE TABLE tags (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    name text NOT NULL,
    slug text NOT NULL UNIQUE
);

CREATE TABLE question_tags (
    question_id uuid NOT NULL REFERENCES questions(id) ON DELETE CASCADE,
    tag_id uuid NOT NULL REFERENCES tags(id) ON DELETE CASCADE,
    PRIMARY KEY(question_id, tag_id)
);

CREATE TABLE learning_sessions (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id uuid NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    mode text NOT NULL,
    seed text,
    started_at timestamptz NOT NULL DEFAULT now(),
    ended_at timestamptz,
    questions_answered integer NOT NULL DEFAULT 0 CHECK (questions_answered >= 0),
    jxp_earned integer NOT NULL DEFAULT 0 CHECK (jxp_earned >= 0),
    metadata jsonb NOT NULL DEFAULT '{}'::jsonb
);

CREATE TABLE user_answers (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    attempt_token uuid NOT NULL UNIQUE,
    user_id uuid NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    session_id uuid REFERENCES learning_sessions(id) ON DELETE SET NULL,
    question_id uuid NOT NULL REFERENCES questions(id) ON DELETE RESTRICT,
    question_version integer NOT NULL,
    answer_payload jsonb NOT NULL,
    is_correct boolean NOT NULL,
    score numeric(6,3),
    response_time_ms integer CHECK (response_time_ms >= 0),
    attempt_number integer NOT NULL DEFAULT 1 CHECK (attempt_number >= 1),
    answered_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE user_skill_progress (
    user_id uuid NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    skill_id uuid NOT NULL REFERENCES skills(id) ON DELETE CASCADE,
    accuracy numeric(5,2) NOT NULL DEFAULT 0 CHECK (accuracy BETWEEN 0 AND 100),
    mastery numeric(5,2) NOT NULL DEFAULT 0 CHECK (mastery BETWEEN 0 AND 100),
    evidence_diversity numeric(5,4) NOT NULL DEFAULT 0 CHECK (evidence_diversity BETWEEN 0 AND 1),
    attempts integer NOT NULL DEFAULT 0 CHECK (attempts >= 0),
    correct_answers integer NOT NULL DEFAULT 0 CHECK (correct_answers >= 0),
    last_answered_at timestamptz,
    last_review_at timestamptz,
    created_at timestamptz NOT NULL DEFAULT now(),
    updated_at timestamptz NOT NULL DEFAULT now(),
    PRIMARY KEY(user_id, skill_id),
    CHECK (correct_answers <= attempts)
);

CREATE TABLE user_skill_retention (
    user_id uuid NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    skill_id uuid NOT NULL REFERENCES skills(id) ON DELETE CASCADE,
    stability numeric(10,4) NOT NULL DEFAULT 0,
    retention_estimate numeric(5,4) NOT NULL DEFAULT 0 CHECK (retention_estimate BETWEEN 0 AND 1),
    successful_reviews integer NOT NULL DEFAULT 0 CHECK (successful_reviews >= 0),
    failed_reviews integer NOT NULL DEFAULT 0 CHECK (failed_reviews >= 0),
    last_review_at timestamptz,
    next_review_at timestamptz,
    PRIMARY KEY(user_id, skill_id)
);

CREATE TABLE question_reviews (
    user_id uuid NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    question_id uuid NOT NULL REFERENCES questions(id) ON DELETE CASCADE,
    next_review_at timestamptz NOT NULL,
    interval_days numeric(10,2) NOT NULL DEFAULT 1 CHECK (interval_days >= 0),
    ease_factor numeric(8,4),
    repetitions integer NOT NULL DEFAULT 0 CHECK (repetitions >= 0),
    last_result boolean,
    updated_at timestamptz NOT NULL DEFAULT now(),
    PRIMARY KEY(user_id, question_id)
);

CREATE TABLE mastery_events (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id uuid NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    skill_id uuid NOT NULL REFERENCES skills(id) ON DELETE CASCADE,
    question_id uuid REFERENCES questions(id) ON DELETE SET NULL,
    before_value numeric(5,2) NOT NULL CHECK (before_value BETWEEN 0 AND 100),
    delta numeric(7,3) NOT NULL,
    after_value numeric(5,2) NOT NULL CHECK (after_value BETWEEN 0 AND 100),
    reason text NOT NULL,
    metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
    created_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE xp_transactions (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id uuid NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    amount integer NOT NULL,
    reason text NOT NULL,
    reference_type text,
    reference_id text,
    idempotency_key text UNIQUE,
    created_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE user_activity_days (
    user_id uuid NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    activity_date date NOT NULL,
    jxp_earned integer NOT NULL DEFAULT 0 CHECK (jxp_earned >= 0),
    questions_answered integer NOT NULL DEFAULT 0 CHECK (questions_answered >= 0),
    meaningful_activity boolean NOT NULL DEFAULT false,
    PRIMARY KEY(user_id, activity_date)
);

CREATE TABLE achievements (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    name text NOT NULL,
    slug text NOT NULL UNIQUE,
    description text NOT NULL,
    icon text,
    xp_reward integer NOT NULL DEFAULT 0 CHECK (xp_reward >= 0),
    requirement_type text NOT NULL,
    requirement_value jsonb NOT NULL,
    active boolean NOT NULL DEFAULT true
);

CREATE TABLE user_achievements (
    user_id uuid NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    achievement_id uuid NOT NULL REFERENCES achievements(id) ON DELETE CASCADE,
    unlocked_at timestamptz NOT NULL DEFAULT now(),
    PRIMARY KEY(user_id, achievement_id)
);

CREATE TABLE learning_paths (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    name text NOT NULL,
    slug text NOT NULL UNIQUE,
    description text,
    active boolean NOT NULL DEFAULT true
);

CREATE TABLE modules (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    path_id uuid NOT NULL REFERENCES learning_paths(id) ON DELETE CASCADE,
    name text NOT NULL,
    position integer NOT NULL,
    level text CHECK (level IN ('beginner','intermediate','advanced')),
    UNIQUE(path_id, position)
);

CREATE TABLE module_skills (
    module_id uuid NOT NULL REFERENCES modules(id) ON DELETE CASCADE,
    skill_id uuid NOT NULL REFERENCES skills(id) ON DELETE RESTRICT,
    position integer NOT NULL,
    required_mastery numeric(5,2) NOT NULL DEFAULT 0 CHECK (required_mastery BETWEEN 0 AND 100),
    PRIMARY KEY(module_id, skill_id)
);

CREATE TABLE classes (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    teacher_id uuid NOT NULL REFERENCES users(id) ON DELETE RESTRICT,
    name text NOT NULL,
    join_code text UNIQUE,
    created_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE class_students (
    class_id uuid NOT NULL REFERENCES classes(id) ON DELETE CASCADE,
    student_id uuid NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    joined_at timestamptz NOT NULL DEFAULT now(),
    PRIMARY KEY(class_id, student_id)
);

CREATE TABLE assignments (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    teacher_id uuid NOT NULL REFERENCES users(id) ON DELETE RESTRICT,
    class_id uuid NOT NULL REFERENCES classes(id) ON DELETE CASCADE,
    title text NOT NULL,
    instructions text,
    due_at timestamptz,
    settings_json jsonb NOT NULL DEFAULT '{}'::jsonb,
    created_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE assignment_items (
    assignment_id uuid NOT NULL REFERENCES assignments(id) ON DELETE CASCADE,
    question_id uuid NOT NULL REFERENCES questions(id) ON DELETE RESTRICT,
    position integer NOT NULL,
    PRIMARY KEY(assignment_id, question_id),
    UNIQUE(assignment_id, position)
);

CREATE TABLE question_editorial_reviews (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    question_id uuid NOT NULL REFERENCES questions(id) ON DELETE CASCADE,
    reviewer_id uuid REFERENCES users(id) ON DELETE SET NULL,
    review_type text NOT NULL CHECK (review_type IN ('editorial','technical','pedagogical','security')),
    decision text NOT NULL CHECK (decision IN ('changes_requested','approved','rejected')),
    notes text,
    created_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE user_flags (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id uuid REFERENCES users(id) ON DELETE SET NULL,
    question_id uuid NOT NULL REFERENCES questions(id) ON DELETE CASCADE,
    reason text NOT NULL,
    comment text,
    created_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE analytics_events (
    id bigserial PRIMARY KEY,
    user_id uuid REFERENCES users(id) ON DELETE SET NULL,
    session_id uuid REFERENCES learning_sessions(id) ON DELETE SET NULL,
    event_name text NOT NULL,
    schema_version integer NOT NULL DEFAULT 1,
    properties_json jsonb NOT NULL DEFAULT '{}'::jsonb,
    created_at timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX idx_user_answers_user_time ON user_answers(user_id, answered_at DESC);
CREATE INDEX idx_user_answers_question_time ON user_answers(question_id, answered_at DESC);
CREATE INDEX idx_question_reviews_due ON question_reviews(user_id, next_review_at);
CREATE INDEX idx_questions_pool ON questions(active, status, category_id, level, difficulty);
CREATE INDEX idx_question_skills_skill ON question_skills(skill_id, question_id);
CREATE INDEX idx_xp_transactions_user_time ON xp_transactions(user_id, created_at DESC);
CREATE INDEX idx_mastery_events_user_skill_time ON mastery_events(user_id, skill_id, created_at DESC);
CREATE INDEX idx_analytics_events_name_time ON analytics_events(event_name, created_at DESC);
CREATE INDEX idx_analytics_events_user_time ON analytics_events(user_id, created_at DESC);

-- Trigger simples de updated_at pode ser adicionado conforme o framework escolhido.
