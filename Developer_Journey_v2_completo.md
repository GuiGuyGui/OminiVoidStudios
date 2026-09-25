Developer Journey
Plataforma gamificada de aprendizagem e simulação da rotina de desenvolvimento de software
Versão: 1.0
Status: Documento-base para desenvolvimento
Objetivo: criar uma plataforma de aprendizagem contínua para programação, combinando perguntas, desafios práticos, repetição espaçada, gamificação e situações inspiradas no cotidiano de desenvolvedores.

1. Visão do produto
O Developer Journey é uma plataforma educacional na qual alunos aprendem programação através de pequenas atividades diárias.

A proposta não é apenas testar conhecimento.

O sistema deve ajudar o aluno a desenvolver:

raciocínio lógico;

leitura de código;

escrita de código;

debugging;

Git e GitHub;

terminal;

HTTP e APIs;

banco de dados;

testes;

code review;

boas práticas;

resolução de problemas;

comunicação técnica;

familiaridade com situações encontradas no dia a dia de um desenvolvedor.

A experiência deve combinar elementos de:

Duolingo;

plataformas de exercícios de programação;

RPG de progressão;

simulador de situações profissionais.

O aluno deve sentir que está construindo uma carreira fictícia de desenvolvedor enquanto aprende.

2. Princípios do sistema
O produto deve seguir seis princípios.

2.1 Consistência
É preferível incentivar 10 minutos por dia durante meses do que sessões enormes e esporádicas.

2.2 Feedback imediato
Toda resposta deve gerar algum tipo de feedback.

O aluno deve saber:

se acertou;

qual era a resposta correta;

por que estava correta;

por que sua resposta estava errada;

quais conceitos estão relacionados.

2.3 Repetição espaçada
Conteúdos difíceis devem voltar posteriormente.

O sistema não deve considerar que uma questão foi "aprendida" simplesmente porque o aluno acertou uma vez.

2.4 Aprendizagem adaptativa
Dois alunos podem receber perguntas diferentes.

A seleção deve considerar:

conhecimento;

histórico;

erros;

dificuldade;

tempo desde a última revisão;

habilidades fracas;

progresso recente.

2.5 Vida real
Parte significativa dos exercícios deve representar situações plausíveis do cotidiano profissional.

2.6 Gamificação como meio
XP, níveis, badges e rankings devem incentivar aprendizagem, não substituir aprendizagem.

3. Personas
3.1 Aluno iniciante
Possui pouco ou nenhum conhecimento de programação.

Precisa de:

perguntas simples;

feedback detalhado;

progressão clara;

pequenas vitórias;

explicações.

3.2 Aluno intermediário
Já conhece programação, mas possui lacunas.

Precisa de:

desafios mais complexos;

debugging;

leitura de código;

situações reais;

revisão de conceitos.

3.3 Aluno avançado
Precisa de:

problemas menos óbvios;

arquitetura;

performance;

code review;

decisões técnicas;

cenários profissionais.

3.4 Professor
Precisa acompanhar:

participação;

desempenho;

dificuldades;

evolução;

habilidades da turma;

perguntas problemáticas.

4. Estrutura geral da experiência
O fluxo principal do aluno será:

LOGIN
  ↓
DASHBOARD
  ↓
MISSÃO DO DIA
  ↓
PERGUNTAS
  ↓
FEEDBACK
  ↓
XP
  ↓
ATUALIZAÇÃO DAS HABILIDADES
  ↓
REVISÕES PROGRAMADAS
  ↓
PROGRESSÃO

5. Dashboard do aluno
A tela inicial deve mostrar:

Olá, João! 👋

🔥 8 dias de sequência

Nível 12
████████████░░░░ 740 / 1000 XP

━━━━━━━━━━━━━━━━━━━━━━━━━━

🚀 MISSÃO DO DIA

5 desafios
~8 minutos

[ COMEÇAR ]

━━━━━━━━━━━━━━━━━━━━━━━━━━

📚 SUAS HABILIDADES

JavaScript       ████████░░ 82%
Git              ██████░░░░ 64%
SQL              █████░░░░░ 51%
Debugging        ████░░░░░░ 43%

━━━━━━━━━━━━━━━━━━━━━━━━━━

🔄 REVISÕES

3 conceitos precisam de revisão

[ REVISAR ]

━━━━━━━━━━━━━━━━━━━━━━━━━━

🏆 CONQUISTAS

🐛 Bug Hunter
🔥 7 Day Streak
💻 First Commit

6. Sistema de perguntas
Cada pergunta deve possuir metadados suficientes para que o sistema consiga selecioná-la inteligentemente.

Uma pergunta deve possuir:

categoria;

habilidades;

dificuldade;

tipo;

XP;

tempo estimado;

explicação;

resposta;

tags;

versão;

status;

estatísticas.

7. Tipos de pergunta
O sistema deve suportar inicialmente:

7.1 Multiple choice
Exemplo:

Qual método cria um novo array sem modificar o original?

map

push

sort

splice

7.2 Verdadeiro ou falso
const impede que o objeto seja modificado.

Resposta:

Falso.

A explicação deve esclarecer a diferença entre reatribuição e mutação.

7.3 Output de código
Exemplo:

const numbers = [1, 2, 3];

console.log(numbers.map(n => n * 2));

Pergunta:

O que será exibido?

7.4 Encontrar o bug
O aluno recebe um trecho de código com problema.

Deve identificar:

causa;

consequência;

possível correção.

7.5 Completar código
Exemplo:

const numbers = [1, 2, 3];

const result = numbers.____(n => n * 2);

7.6 Ordenar etapas
Exemplo:

Coloque em ordem as etapas para investigar um erro em produção.

7.7 Code review
O aluno recebe um Pull Request fictício.

Deve identificar problemas como:

bug;

duplicação;

falta de tratamento de erro;

problema de segurança;

legibilidade;

performance.

7.8 Cenário profissional
Exemplo:

A API começou a retornar HTTP 500 depois de uma alteração. Qual seria sua primeira ação?

O objetivo não é necessariamente existir uma única resposta "mágica", mas avaliar o raciocínio esperado.

7.9 Terminal
Exemplo:

Você deseja descobrir em qual diretório está. Qual comando utilizaria?

7.10 Git
Exemplo:

Você alterou vários arquivos, mas quer descartar apenas as alterações de um arquivo específico.

8. Categorias
Categorias iniciais:

Fundamentos
Lógica
JavaScript
TypeScript
HTML
CSS
Git
GitHub
Terminal
Linux
Debugging
HTTP
APIs
SQL
Banco de Dados
Testes
Clean Code
Code Review
Arquitetura
Segurança
Performance
Comunicação
Carreira
Rotina de Desenvolvimento

9. Habilidades
As categorias devem ser divididas em habilidades menores.

Exemplo:

JavaScript
├── variables
├── types
├── operators
├── conditionals
├── loops
├── arrays
├── objects
├── functions
├── scope
├── closures
├── modules
├── promises
├── async-await
├── error-handling
└── DOM

Git:

Git
├── init
├── add
├── commit
├── status
├── log
├── branch
├── merge
├── rebase
├── stash
├── reset
├── revert
├── cherry-pick
└── pull-request

10. Banco inicial de conteúdo
Meta inicial:

2.200 perguntas.

Distribuição:

Categoria	Quantidade
Fundamentos	200
JavaScript	250
TypeScript	100
HTML/CSS	150
Git/GitHub	180
Terminal/Linux	100
Debugging	200
HTTP/APIs	150
SQL	180
Banco de Dados	100
Code Review	150
Clean Code	100
Arquitetura	80
Testes	80
Segurança	50
Rotina de dev	80
Comunicação	50
Carreira	50
Total	2.200

Essa distribuição é inicial e deve ser alterada conforme os dados reais de uso.

11. Dificuldade
Cada pergunta possui dificuldade de 1 a 5.

1 — Muito fácil
2 — Fácil
3 — Intermediária
4 — Difícil
5 — Muito difícil

Entretanto, a dificuldade deve poder ser recalculada com base no comportamento dos alunos.

Exemplo:

Pergunta #1842

Dificuldade inicial: 3

Respostas: 1.842
Acertos: 94%
Tempo médio: 8 segundos

O sistema pode sugerir que essa questão seja reclassificada.

12. Modelo de dados
Banco recomendado:

PostgreSQL

12.1 users
id
name
email
password_hash
role
xp
level
current_streak
longest_streak
last_activity_at
created_at
updated_at

role:

student
teacher
admin

13. categories
id
name
slug
description
icon
color
created_at

14. skills
id
category_id
name
slug
description
created_at

Relacionamento:

category
   │
   ├── skill
   ├── skill
   └── skill

15. questions
id
category_id
type
difficulty
question
code
explanation
xp
estimated_time
active
created_at
updated_at

Tipos:

multiple_choice
true_false
code_output
find_bug
fill_code
order_steps
match
code_review
scenario
terminal

16. question_options
id
question_id
text
is_correct
position

17. question_skills
Tabela N:N.

question_id
skill_id

Uma pergunta pode testar várias habilidades.

18. question_tags
id
name

E:

question_id
tag_id

Exemplo:

javascript
beginner
async
common-mistake

19. user_answers
Registra cada tentativa.

id
user_id
question_id
answer
is_correct
response_time
attempt_number
answered_at

Isso é fundamental para analytics.

20. user_skill_progress
Representa o conhecimento estimado do aluno.

id
user_id
skill_id
accuracy
mastery
attempts
correct_answers
last_answered_at
last_review_at
created_at
updated_at

mastery pode variar:

0 - 100

Exemplo:

Promises
accuracy: 64
mastery: 48
attempts: 31

21. question_reviews
Responsável pela repetição espaçada.

id
user_id
question_id
next_review_at
interval_days
ease_factor
repetitions
last_result

22. daily_challenges
id
date
question_id
position
created_at

23. user_daily_challenges
id
user_id
daily_challenge_id
completed
completed_at

24. achievements
id
name
slug
description
icon
xp_reward
requirement_type
requirement_value

25. user_achievements
id
user_id
achievement_id
unlocked_at

26. XP transactions
Não recomendo simplesmente alterar:

users.xp

sem guardar o histórico.

Crie:

xp_transactions

id
user_id
amount
reason
reference_id
created_at

Exemplo:

+10  question_correct
+20  daily_challenge
+50  achievement
+10  streak_bonus

Assim é possível auditar o XP.

27. Streak
O sistema deve registrar atividade diária.

Tabela:

user_activity_days

id
user_id
activity_date
xp_earned
questions_answered

A sequência é calculada considerando dias consecutivos de atividade.

28. Sistema de XP
Inicialmente:

Questão fácil        +5 XP
Questão média       +10 XP
Questão difícil     +15 XP
Desafio especial    +25 XP
Missão diária       +20 XP
Conquista           +50 XP

Pode existir um limite de XP proveniente de perguntas repetidas no mesmo dia.

29. Níveis
Modelo:

Level 1  → 0 XP
Level 2  → 100 XP
Level 3  → 250 XP
Level 4  → 450 XP
Level 5  → 700 XP
...

O crescimento pode ser progressivamente maior.

Não é necessário definir todos os níveis inicialmente.

O cálculo pode ser baseado em uma fórmula:

XP necessário = 100 × level^1.5

30. Seleção inteligente de perguntas
O sistema nunca deve simplesmente selecionar perguntas aleatórias.

A seleção deve considerar:

40% → habilidades fracas
25% → revisão espaçada
20% → conteúdo novo
15% → aleatoriedade

Exemplo de pontuação:

score =
    weakness_score
  + review_score
  + novelty_score
  + difficulty_match
  + randomness
  - recent_repeat_penalty

31. Weakness score
Quanto menor o domínio de uma habilidade, maior sua prioridade.

Exemplo:

mastery = 30

weakness_score = 70

Já:

mastery = 90

weakness_score = 10

32. Review score
Uma pergunta cuja revisão está atrasada recebe prioridade.

Exemplo:

next_review_at < now

→ alta prioridade.

33. Recent repeat penalty
Evitar mostrar a mesma pergunta várias vezes em sequência.

Por exemplo:

respondida < 24h

→ penalidade alta.

34. Novo conteúdo
O sistema também precisa introduzir conceitos novos.

Exemplo:

Aluno domina:

arrays
objects
functions

Próximo conceito:

promises

O sistema pode liberar uma pergunta introdutória antes das perguntas avançadas.

35. Repetição espaçada
Uma implementação inicial pode usar intervalos simples:

Acertou:
1ª vez → 1 dia
2ª vez → 3 dias
3ª vez → 7 dias
4ª vez → 14 dias
5ª vez → 30 dias

Se errar:

volta para 1 dia

Posteriormente, pode-se implementar um algoritmo mais sofisticado.

36. Missão diária
Cada aluno recebe aproximadamente:

5 perguntas

Distribuição:

1 × habilidade fraca
1 × revisão
1 × conteúdo novo
1 × situação real
1 × aleatória

Exemplo:

🚀 MISSÃO DO DIA

1. JavaScript — Promises
2. Git — revisão
3. HTTP — novo conceito
4. Debugging — situação real
5. SQL — surpresa

37. Missões especiais
Além da missão diária:

🐛 Bug em produção
🔀 Conflito de merge
🚨 API fora do ar
🗄️ Banco lento
🔐 Problema de autenticação
👀 Code review

Essas missões podem conter 5–10 etapas.

38. Simulação de incidentes
Exemplo:

INCIDENTE #023

Sistema:
API de pagamentos

Horário:
14:32

Problema:
usuários começaram a receber HTTP 500.

Etapa 1:

Qual seria uma investigação inicial razoável?

Etapa 2:

Você encontrou este log.

Etapa 3:

Qual hipótese parece mais consistente?

Etapa 4:

Qual alteração você faria?

Etapa 5:

Como comunicaria o incidente ao time?

Recompensa:

+100 XP
🏆 Incident Responder

39. Code Review
Criar exercícios como:

Pull Request #381

Título:
Refactor user authentication

Alterações:
+ código
- código

Sua tarefa:

Encontre os problemas antes de aprovar.

O sistema pode avaliar itens específicos:

[ ] Segurança
[ ] Performance
[ ] Bug
[ ] Legibilidade
[ ] Testes
[ ] Arquitetura

40. Painel do professor
O professor deve visualizar:

Turma 2026

32 alunos

Participação: 89%

Média de acertos: 71%

XP médio: 4.280

Streak médio: 6,4 dias

41. Mapa de dificuldades da turma
Exemplo:

HABILIDADE             DOMÍNIO

Variables              █████████░ 90%
Arrays                 ████████░░ 82%
Functions              ███████░░░ 74%
Git                    ██████░░░░ 64%
SQL JOIN               █████░░░░░ 51%
Promises               ████░░░░░░ 43%

Isso permite que o professor identifique assuntos que merecem uma aula.

42. Métricas importantes
O sistema deve coletar:

Aluno
perguntas respondidas;

taxa de acerto;

tempo médio;

XP;

streak;

habilidades;

revisões;

erros recorrentes.

Pergunta
número de respostas;

taxa de acerto;

tempo médio;

taxa de abandono;

dificuldade real;

quantidade de vezes revisada.

Turma
participação;

média;

evolução;

habilidades fracas;

atividades concluídas.

43. Indicadores de qualidade das perguntas
Uma pergunta pode ser marcada automaticamente para revisão quando:

acerto > 95%

ou

acerto < 20%

ou

tempo médio muito alto

ou

muitos alunos abandonam

Isso permite descobrir:

perguntas fáceis demais;

perguntas difíceis demais;

perguntas ambíguas;

perguntas mal explicadas.

44. Sistema de feedback
Após cada resposta:

✅ CORRETO!

+10 XP

Por quê?

`map()` cria um novo array aplicando
uma transformação a cada elemento.

💡 Dica:

`map()` não modifica o array original.

[ CONTINUAR ]

Erro:

❌ NÃO FOI DESSA VEZ

Resposta correta:
map()

Você escolheu:
forEach()

Por quê?

`forEach()` executa uma função para cada
elemento, mas não cria automaticamente
um novo array.

🔄 Esta questão será revisada posteriormente.

[ CONTINUAR ]

45. Gamificação
Badges iniciais
Consistência
First Step
3 Day Streak
7 Day Streak
30 Day Streak
100 Day Streak

Programação
First Code
100 Questions
500 Questions
1000 Questions

Debugging
Bug Hunter
Bug Slayer
Debug Master

Git
First Commit
Branch Explorer
Merge Master
Git Survivor

46. Ranking
O ranking deve ser opcional.

Possibilidades:

ranking semanal
ranking mensal
ranking da turma
ranking entre amigos

Evitar um ranking global permanente como única forma de competição.

Também mostrar progresso individual:

Seu XP esta semana:

████████████░░░

+340 XP

47. Sistema de ligas
Opcional para uma segunda versão.

Exemplo:

Bronze
Silver
Gold
Platinum
Diamond

As ligas podem ser baseadas em atividade semanal.

Não devem representar competência profissional real.

48. Economia de energia
Opcional.

O aluno pode ter:

❤️❤️❤️❤️❤️

e perder uma vida ao errar.

Porém, eu deixaria esse mecanismo desligado inicialmente.

A prioridade deve ser aprendizagem, não punição.

49. Sistema de desbloqueio
Alguns conteúdos podem exigir pré-requisitos.

Exemplo:

Fundamentos
    ↓
JavaScript básico
    ↓
Functions
    ↓
Promises
    ↓
Async/Await

O aluno pode acessar conteúdos anteriores livremente, mas novos módulos podem ser recomendados conforme domínio.

50. Estrutura de conteúdo
Uma árvore possível:

Developer Journey

├── Fundamentos
│   ├── Lógica
│   ├── Variáveis
│   ├── Condicionais
│   └── Loops
│
├── Web
│   ├── HTML
│   ├── CSS
│   ├── HTTP
│   └── APIs
│
├── JavaScript
│   ├── Básico
│   ├── Arrays
│   ├── Objects
│   ├── Functions
│   ├── Async
│   └── DOM
│
├── Ferramentas
│   ├── Terminal
│   ├── Git
│   └── GitHub
│
├── Backend
│   ├── APIs
│   ├── SQL
│   └── Banco de dados
│
└── Vida de Dev
    ├── Debugging
    ├── Code Review
    ├── Comunicação
    ├── Incidentes
    └── Trabalho em equipe

51. Administração de perguntas
O professor/admin deve conseguir:

Criar pergunta
Editar pergunta
Duplicar pergunta
Desativar pergunta
Adicionar habilidade
Alterar dificuldade
Ver estatísticas
Ver respostas dos alunos

52. Editor de perguntas
Interface:

Tipo:
[ Multiple Choice ▼ ]

Categoria:
[ JavaScript ▼ ]

Habilidades:
[ Arrays ] [ Map ] [ Functions ]

Dificuldade:
[ 3 ]

Pergunta:

┌───────────────────────────────┐
│ Qual será o resultado...?     │
└───────────────────────────────┘

Código:

┌───────────────────────────────┐
│ const numbers = [...]         │
└───────────────────────────────┘

Alternativas:

○ opção A
○ opção B
○ opção C
○ opção D

Explicação:

┌───────────────────────────────┐
│ ...                           │
└───────────────────────────────┘

[ SALVAR ]

53. Importação de perguntas
Como serão milhares de perguntas, deve existir importação em lote.

Formato recomendado:

JSON

ou:

CSV

Exemplo:

{
  "type": "multiple_choice",
  "category": "javascript",
  "difficulty": 2,
  "question": "Qual método...",
  "options": [
    {
      "text": "map",
      "correct": true
    },
    {
      "text": "push",
      "correct": false
    }
  ],
  "explanation": "..."
}

54. Versionamento das perguntas
Não apagar perguntas definitivamente.

Utilizar:

active = false

e manter histórico de alterações quando necessário.

Isso preserva dados históricos.

55. Segurança
O sistema deve seguir práticas básicas:

senhas com hash seguro;

autenticação baseada em sessão/token;

autorização por papel;

validação de entrada;

proteção contra SQL injection;

rate limiting;

logs;

controle de acesso às respostas.

Importante:

A resposta correta nunca deve ser enviada ao frontend antes da submissão.

56. API
Exemplos de endpoints:

POST /auth/login
POST /auth/register
GET  /me

GET  /dashboard

GET  /daily-challenge
POST /questions/:id/answer

GET  /skills
GET  /skills/:id

GET  /reviews
POST /reviews/:id/answer

GET  /achievements
GET  /leaderboard

GET  /teacher/dashboard
GET  /teacher/students
GET  /teacher/questions

POST /teacher/questions
PUT  /teacher/questions/:id
DELETE /teacher/questions/:id

57. Resposta de uma questão
Exemplo:

{
  "question_id": 1842,
  "answer": "option_b"
}

Resposta do servidor:

{
  "correct": true,
  "xp_earned": 10,
  "explanation": "...",
  "new_xp": 1840,
  "level": 8,
  "skill_updates": [
    {
      "skill": "promises",
      "mastery": 54
    }
  ],
  "next_review": "2026-09-28"
}

58. Arquitetura recomendada
Uma arquitetura inicial simples:

Frontend
   │
   ▼
API
   │
   ├── Auth
   ├── Questions
   ├── Learning Engine
   ├── Gamification
   ├── Analytics
   └── Teacher
   │
   ▼
PostgreSQL

Não é necessário começar com microsserviços.

Um backend modular monolítico é suficiente para o MVP.

59. Learning Engine
Criar um módulo separado:

learning-engine/

Responsável por:

selectQuestions()
calculateMastery()
calculateNextReview()
calculateDifficulty()
updateSkillProgress()
generateDailyChallenge()

Isso permite evoluir o algoritmo sem misturá-lo com controllers da API.

60. Algoritmo inicial
Pseudocódigo:

function generateDailyChallenge(user):

    weakQuestions =
        findQuestionsFromWeakSkills(user)

    reviewQuestions =
        findQuestionsDueForReview(user)

    newQuestions =
        findNewContent(user)

    realWorldQuestions =
        findScenarioQuestions(user)

    randomQuestions =
        findRandomSuitableQuestions(user)

    questions = weightedSelect(
        weakQuestions,
        reviewQuestions,
        newQuestions,
        realWorldQuestions,
        randomQuestions
    )

    removeRecentDuplicates(questions)

    sortByDifficultyProgression(questions)

    return questions

61. Progressão de domínio
A habilidade pode começar em:

mastery = 0

Cada resposta modifica esse valor.

Exemplo simples:

acerto:
mastery += 5

erro:
mastery -= 7

Com limites:

0 ≤ mastery ≤ 100

Posteriormente, o algoritmo pode considerar:

dificuldade;

tempo;

quantidade de acertos consecutivos;

repetição;

intervalo entre respostas.

62. Exemplo completo de aluno
Maria

Level: 14
XP: 8.420

🔥 Streak: 17 dias

Perguntas:
1.248

Acerto:
78%

────────────────────

HABILIDADES

JavaScript       84%
Git              73%
HTML             91%
SQL              62%
Debugging        48%
HTTP             67%

────────────────────

REVISÕES

Promises
SQL JOIN
Git Rebase
Error Handling

O sistema conclui:

Prioridade:

1. Debugging
2. SQL
3. Promises

E adapta as próximas sessões.

63. Exemplo de jornada diária
16:00

Maria entra.

↓

Dashboard

"Você tem 8 dias de sequência."

↓

Missão diária

5 perguntas

↓

Pergunta 1

Debugging — dificuldade 2

Acertou.

+10 XP

↓

Pergunta 2

Promises — dificuldade 3

Errou.

Explicação.

Revisão em 1 dia.

↓

Pergunta 3

Git — revisão.

Acertou.

↓

Pergunta 4

Incidente em produção.

↓

Pergunta 5

SQL.

↓

Resultado

4/5

+55 XP

🔥 Streak continua

Nova conquista:

🐛 Bug Hunter

64. MVP
Não construir tudo inicialmente.

A primeira versão deve conter:

[✓] Login
[✓] Alunos
[✓] Perguntas
[✓] Categorias
[✓] Habilidades
[✓] Respostas
[✓] XP
[✓] Níveis
[✓] Streak
[✓] Missão diária
[✓] Dashboard
[✓] Painel básico do professor
[✓] Estatísticas

Começar com aproximadamente:

300–500 perguntas.

65. Versão 2
Adicionar:

[ ] Repetição espaçada avançada
[ ] Badges
[ ] Ranking
[ ] Code review
[ ] Cenários profissionais
[ ] Missões especiais
[ ] Analytics avançado
[ ] Importação em massa

66. Versão 3
Adicionar:

[ ] Simulações completas
[ ] Editor de código
[ ] Execução de código
[ ] Projetos
[ ] Trilhas personalizadas
[ ] Recomendações automáticas
[ ] Sistema avançado de domínio
[ ] IA para geração/revisão de conteúdo

67. IA
A IA pode ser utilizada posteriormente para auxiliar na criação do banco.

Fluxo:

Professor define:

Categoria:
JavaScript

Skill:
Promises

Dificuldade:
3

Quantidade:
20

A IA gera rascunhos.

Mas:

IA gera
   ↓
Professor revisa
   ↓
Pergunta publicada
   ↓
Alunos respondem
   ↓
Dados reais
   ↓
Pergunta é avaliada

A IA não deve ser considerada a autoridade final sobre a qualidade pedagógica da pergunta.

68. Geração de perguntas
Cada pergunta gerada deve obrigatoriamente possuir:

categoria
habilidade
dificuldade
tipo
enunciado
resposta
explicação

Opcionalmente:

código
tags
tempo estimado
objetivo pedagógico
erro comum

69. Objetivo pedagógico
Esse campo é especialmente importante.

Exemplo:

objective:

"Identificar a diferença entre map e forEach."

Isso facilita a avaliação da qualidade do banco.

Duas perguntas diferentes podem testar o mesmo objetivo.

70. Controle de cobertura
Criar um relatório:

JavaScript

Variables        30 perguntas
Arrays           42
Objects          38
Functions        51
Promises         17 ⚠
Async/Await      12 ⚠
Error Handling   8  ⚠

Assim você consegue descobrir onde faltam perguntas.

71. Regra de ouro para os 2.000 exercícios
Não criar:

2.000 perguntas aleatórias.

Criar:

2.000 perguntas
       ↓
organizadas por habilidades
       ↓
com diferentes dificuldades
       ↓
com diferentes formatos
       ↓
com diferentes contextos
       ↓
ligadas a objetivos pedagógicos

Isso torna o banco realmente valioso.

72. Métrica principal do produto
Não utilizar apenas:

XP

A métrica principal deve ser algo próximo de:

aprendizagem + consistência + domínio.

Por exemplo:

Learning Score

40% domínio das habilidades
30% consistência
20% retenção
10% desafios práticos

Esse indicador é interno para análise e não precisa necessariamente ser mostrado ao aluno.

73. Objetivo final
O produto deve evoluir de:

"responda perguntas de programação"

para:

"construa sua experiência como desenvolvedor."

A jornada ideal é:

Perguntas
   ↓
Conhecimento
   ↓
Habilidades
   ↓
Desafios
   ↓
Simulações
   ↓
Projetos
   ↓
Experiência

74. Roadmap
Fase 1 — Fundação
Banco de dados
Autenticação
Usuários
Categorias
Skills
Perguntas
Respostas

Fase 2 — Gamificação
XP
Níveis
Streak
Badges
Missão diária

Fase 3 — Learning Engine
Mastery
Repetição espaçada
Seleção adaptativa
Revisões

Fase 4 — Professor
Dashboard
Turmas
Analytics
Editor de perguntas
Importação

Fase 5 — Vida real
Debugging
Code Review
Incidentes
Git
Terminal
Simulações

Fase 6 — Escala
2.000+
perguntas

Trilhas
Projetos
IA
Recomendações
Analytics avançado

75. Resultado esperado
Ao final, cada aluno terá um perfil semelhante a:

╔════════════════════════════════╗
║       DEVELOPER JOURNEY        ║
╠════════════════════════════════╣
║                                ║
║ João Silva                     ║
║ Level 18                       ║
║ 12.840 XP                      ║
║ 🔥 42 dias                     ║
║                                ║
║ JavaScript       █████████ 88% ║
║ Git              ███████░░ 71% ║
║ SQL              ██████░░░ 63% ║
║ Debugging        █████░░░░ 52% ║
║ APIs             ███████░░ 69% ║
║                                ║
║ Perguntas: 1.842               ║
║ Acertos: 81%                   ║
║                                ║
║ 🏆 Bug Hunter                  ║
║ 🏆 Git Survivor                ║
║ 🏆 30 Day Streak               ║
║                                ║
╚════════════════════════════════╝

E o professor poderá enxergar a evolução da turma sem precisar avaliar manualmente cada interação.

76. Prioridade de implementação
A ordem recomendada é:

1. PostgreSQL
2. Modelagem das tabelas
3. Autenticação
4. CRUD de perguntas
5. Sistema de respostas
6. Histórico de respostas
7. XP
8. Streak
9. Skills
10. Mastery
11. Missão diária
12. Repetição espaçada
13. Dashboard do aluno
14. Dashboard do professor
15. Analytics
16. Badges
17. Simulações
18. Ranking
19. IA

O ponto mais importante é não começar pela gamificação.

Comece pelo ciclo:

pergunta
→ resposta
→ feedback
→ histórico
→ habilidade
→ próxima pergunta

Quando esse ciclo estiver sólido, XP, badges e ranking tornam-se camadas sobre um sistema de aprendizagem que realmente funciona.

77. Definição do MVP
O MVP pode ser considerado pronto quando um aluno conseguir:

1. Criar uma conta
2. Entrar
3. Receber uma missão diária
4. Responder perguntas
5. Receber feedback
6. Ganhar XP
7. Subir de nível
8. Manter uma sequência
9. Ver suas habilidades
10. Receber perguntas diferentes com base no desempenho
11. Revisar questões anteriores

E o professor conseguir:

1. Criar perguntas
2. Organizar perguntas por habilidade
3. Criar categorias
4. Ver alunos
5. Ver desempenho
6. Identificar dificuldades
7. Ver estatísticas das perguntas

Esse é o núcleo do produto.

78. Visão de longo prazo
O Developer Journey não deve ser apenas um banco de questões.

A visão é criar um ambiente no qual o aluno passe por uma progressão:

        APRENDER
           │
           ▼
       PRATICAR
           │
           ▼
       REVISAR
           │
           ▼
       DEBUGAR
           │
           ▼
      RESOLVER
       PROBLEMAS
           │
           ▼
      SIMULAR O
       TRABALHO
           │
           ▼
        CRIAR
        PROJETOS
           │
           ▼
      DESENVOLVER
       AUTONOMIA

O diferencial do produto será justamente conectar conhecimento técnico + prática + repetição + contexto profissional.

79. Regra fundamental do projeto
Cada interação do aluno deve ensinar alguma coisa.

Mesmo quando ele errar.

Se o aluno responder errado e simplesmente receber:

❌ Errado.

o sistema perdeu uma oportunidade.

O ideal é:

❌ Não foi dessa vez.

Você escolheu forEach(), mas a pergunta precisava de map().

forEach() executa uma função para cada elemento, enquanto map() cria um novo array com os valores transformados.

Conceito relacionado: métodos de transformação de arrays.

🔄 Vamos revisar esse conceito novamente daqui a 3 dias.

Esse princípio deve orientar todo o produto.

Esse documento já pode servir como PRD + especificação funcional inicial. O passo técnico seguinte que eu recomendo é transformar isso em uma arquitetura PostgreSQL real, com CREATE TABLE, chaves estrangeiras, índices, constraints e alguns dados iniciais — porque aí você sai da ideia e já tem a fundação que o backend poderá consumir.


# PARTE II — ESPECIFICAÇÃO AMPLIADA PARA PRODUÇÃO

## 80. Escopo da versão 2.0 do documento

Esta parte transforma a visão inicial em uma especificação operacional para implementação. O sistema continua tendo como núcleo o ciclo pergunta → resposta → feedback → histórico → domínio → próxima atividade, porém passa a separar claramente atividade, conhecimento, retenção e progressão.

Objetivos desta versão:

- suportar um banco inicial de 2.200 questões;
- dividir explicitamente o conteúdo em iniciante, intermediário e avançado;
- impedir que XP seja confundido com domínio técnico;
- permitir importação em massa por JSON ou CSV;
- permitir seleção adaptativa de questões;
- produzir dados suficientes para professor, aluno e analytics;
- criar identidade própria para o Developer Journey;
- manter o sistema utilizável mesmo sem IA em produção;
- permitir expansão posterior para execução de código, projetos e simulações.

## 81. Identidade de progressão do Developer Journey

O produto terá quatro camadas de progressão independentes.

### 81.1 Journey XP — JXP

JXP representa atividade e participação. É ganho por responder, revisar, concluir missões e participar de desafios. JXP nunca deve ser apresentado como prova direta de competência profissional.

### 81.2 Skill Mastery

Cada habilidade possui domínio de 0 a 100. O Mastery é atualizado por evidências de desempenho e sofre influência de dificuldade, retenção e recência.

Faixas sugeridas:

- 0–19: contato inicial;
- 20–39: em desenvolvimento;
- 40–59: funcional;
- 60–79: consistente;
- 80–94: proficiente;
- 95–100: domínio demonstrado no banco atual.

O valor 100 não significa domínio absoluto da tecnologia. Significa que, dadas as evidências disponíveis na plataforma, o usuário demonstrou desempenho máximo no conjunto atual.

### 81.3 Retention Score

Mede a capacidade de recuperar um conceito depois de um intervalo. Acertar cinco perguntas semelhantes em uma sessão não equivale a acertar o conceito novamente depois de 7, 30 ou 90 dias.

### 81.4 Dev Profile

O perfil geral combina habilidades, retenção, prática e consistência. Ele não deve ser uma média simples de XP.

Exemplo conceitual:

Dev Profile = 45% domínio + 25% retenção + 20% prática aplicada + 10% consistência

O valor pode ser usado internamente para recomendação. Para o aluno, é preferível mostrar os componentes separados para evitar uma falsa aparência de precisão.

## 82. Três níveis curriculares

### 82.1 Iniciante

O aluno deve reconhecer conceitos, prever efeitos simples, identificar erros básicos e aplicar operações diretas. Questões devem exigir um ou poucos passos cognitivos.

Exemplos de verbos: reconhecer, identificar, escolher, completar, prever, explicar.

### 82.2 Intermediário

O aluno deve combinar conceitos, depurar, interpretar código maior, escolher estratégias e compreender efeitos colaterais.

Exemplos de verbos: diagnosticar, comparar, corrigir, integrar, justificar, analisar.

### 82.3 Avançado

O aluno deve lidar com trade-offs, arquitetura, segurança, performance, concorrência, incidentes, revisão de código e decisões sob restrições.

Exemplos de verbos: avaliar, priorizar, projetar, defender decisão, investigar, otimizar com evidências.

## 83. Distribuição oficial das 2.200 questões

A primeira versão editorial terá 2.200 registros, distribuídos em 40% iniciante, 40% intermediário e 20% avançado.

| Categoria | Total | Iniciante | Intermediário | Avançado |
|---|---:|---:|---:|---:|
| Fundamentos | 120 | 48 | 48 | 24 |
| Lógica | 100 | 40 | 40 | 20 |
| JavaScript | 180 | 72 | 72 | 36 |
| TypeScript | 100 | 40 | 40 | 20 |
| HTML | 70 | 28 | 28 | 14 |
| CSS | 80 | 32 | 32 | 16 |
| Git/GitHub | 120 | 48 | 48 | 24 |
| Terminal/Linux | 100 | 40 | 40 | 20 |
| Debugging | 120 | 48 | 48 | 24 |
| HTTP/APIs | 120 | 48 | 48 | 24 |
| SQL | 140 | 56 | 56 | 28 |
| Banco de Dados | 90 | 36 | 36 | 18 |
| Testes | 90 | 36 | 36 | 18 |
| Clean Code | 70 | 28 | 28 | 14 |
| Code Review | 70 | 28 | 28 | 14 |
| Arquitetura | 70 | 28 | 28 | 14 |
| Segurança | 80 | 32 | 32 | 16 |
| Performance | 70 | 28 | 28 | 14 |
| Python | 130 | 52 | 52 | 26 |
| Estruturas de Dados e Algoritmos | 100 | 40 | 40 | 20 |
| Docker/DevOps | 70 | 28 | 28 | 14 |
| Comunicação | 50 | 20 | 20 | 10 |
| Carreira e Rotina Dev | 60 | 24 | 24 | 12 |
| **TOTAL** | **2200** | **880** | **880** | **440** |

A distribuição é um plano de cobertura, não uma obrigação eterna. Analytics reais poderão justificar redistribuição.

## 84. Taxonomia cognitiva

Além da dificuldade, cada questão recebe `cognitive_level`:

- remember;
- understand;
- apply;
- analyze;
- evaluate;
- create.

Uma questão avançada não deve ser avançada apenas porque possui código longo. A dificuldade deve vir do raciocínio necessário.

## 85. Contrato mínimo de cada questão

Cada questão deve possuir, no mínimo:

```json
{
  "id": "DJ-JS-000001",
  "level": "beginner",
  "difficulty": 2,
  "category": "JavaScript",
  "skill": "arrays",
  "type": "multiple_choice",
  "cognitive_level": "understand",
  "objective": "Distinguir transformação de mutação em arrays.",
  "question": "...",
  "options": ["..."],
  "answer": "...",
  "explanation": "...",
  "common_mistake": "...",
  "tags": ["javascript", "arrays"],
  "xp": 5,
  "estimated_time_seconds": 40,
  "version": 1,
  "status": "draft_editorial_review"
}
```

## 86. Status editorial de conteúdo

Fluxo obrigatório:

`draft → editorial_review → technical_review → approved → published → retired`

Questões geradas por IA nunca entram diretamente como `published`.

## 87. Regras de qualidade para o banco

Uma questão deve ser rejeitada se:

- depende de informação não apresentada e não assumida como pré-requisito;
- possui duas respostas defensáveis sem declarar que aceita múltiplas;
- testa memorização irrelevante de sintaxe que uma IDE resolveria instantaneamente, sem objetivo pedagógico;
- usa pegadinha linguística em vez de raciocínio técnico;
- contém código que não corresponde à versão de linguagem informada;
- possui alternativa incorreta por detalhe gramatical e não por conceito;
- contém explicação que apenas repete a resposta;
- exige prática insegura;
- confunde preferência de estilo com regra técnica;
- usa dificuldade artificial por enunciado excessivamente longo.

## 88. Diversidade obrigatória dentro de cada habilidade

Nenhuma habilidade deve ser representada apenas por multiple choice. Para cada bloco editorial, buscar aproximadamente:

- 30% escolha ou verdadeiro/falso;
- 20% leitura/output de código;
- 15% completar código;
- 15% encontrar bug;
- 10% cenário profissional;
- 5% code review;
- 5% ordenar, associar ou outro formato.

A distribuição pode variar por assunto. HTML, comunicação e arquitetura naturalmente terão menos questões de output de código que JavaScript ou Python.

## 89. Banco de distratores

Alternativas erradas devem representar erros plausíveis, preferencialmente baseados em:

- confusão entre conceitos próximos;
- comportamento de outra função;
- erro de precedência;
- mutação versus cópia;
- escopo;
- interpretação incorreta de status HTTP;
- cardinalidade incorreta em SQL;
- segurança aplicada apenas no frontend;
- otimização sem medição;
- uso incorreto de Git;
- erro comum observado em turmas.

Distrator absurdo reduz o valor diagnóstico da questão.

## 90. Sistema de pontuação JXP

Pontuação-base sugerida:

- dificuldade 1: 5 JXP;
- dificuldade 2: 7 JXP;
- dificuldade 3: 10 JXP;
- dificuldade 4: 14 JXP;
- dificuldade 5: 18 JXP;
- revisão vencida concluída: bônus de 2 JXP;
- missão diária completa: bônus de 20 JXP;
- missão profissional de múltiplas etapas: 40–150 JXP;
- projeto validado: valor definido pelo projeto.

Erro não remove JXP já conquistado e não deve impedir aprendizagem.

## 91. Anti-grind de XP

Para impedir farming de questões fáceis:

- primeira resposta válida do item no período recebe 100% do JXP;
- repetição voluntária no mesmo dia recebe 20%;
- terceira repetição ou mais recebe 0 JXP, mas continua registrando prática;
- uma revisão programada pelo sistema volta a receber o JXP normal;
- itens muito abaixo do nível recomendado podem receber multiplicador reduzido;
- conquistas nunca devem exigir respostas erradas ou comportamento artificial.

## 92. Streak com identidade própria: Ritmo de Código

O streak pode aparecer como `Ritmo de Código`, representando constância, não punição.

Regras sugeridas:

- um dia conta quando existe pelo menos uma atividade significativa;
- login sem atividade não conta;
- o usuário pode ganhar `Tokens de Recuperação` por consistência prolongada;
- token recupera um dia perdido, sem comprar conhecimento ou alterar Mastery;
- professores podem desativar streak em turmas onde competição seja indesejada.

## 93. Atualização de Mastery — MVP

Para o MVP, usar uma atualização ponderada e simples.

`evidence_score` considera:

- acerto/erro;
- dificuldade do item;
- se era revisão espaçada;
- número de tentativas anteriores;
- independência do item em relação a perguntas recentes.

Exemplo:

```text
if correct:
    delta = 2 + difficulty * 1.2
else:
    delta = -(2.5 + difficulty * 1.0)

if review_due and correct:
    delta *= 1.25

if repeated_recently:
    delta *= 0.35

mastery = clamp(mastery + delta, 0, 100)
```

A regra deve ser substituível por um modelo mais sofisticado sem mudar a API externa.

## 94. Evidência de domínio

Mastery alto só deve ser considerado estável se o aluno possuir evidências em mais de um formato.

Exemplo para `JavaScript / promises`:

- reconheceu conceito;
- previu output;
- encontrou bug;
- resolveu cenário assíncrono;
- acertou novamente após intervalo.

O sistema pode armazenar `evidence_diversity` de 0 a 1.

## 95. Repetição espaçada operacional

Campos recomendados por usuário e habilidade:

- stability;
- difficulty_estimate;
- last_review_at;
- next_review_at;
- successful_reviews;
- failed_reviews;
- retention_estimate.

MVP pode começar com intervalos fixos e evoluir para um algoritmo baseado em retenção.

## 96. Seleção adaptativa — fórmula v2

Cada item candidato recebe um score normalizado:

```text
priority =
    0.30 * weakness
  + 0.25 * due_review
  + 0.15 * prerequisite_readiness
  + 0.10 * novelty
  + 0.10 * format_variety
  + 0.10 * current_learning_goal
  - recent_repeat_penalty
  - overexposure_penalty
```

A aleatoriedade deve atuar apenas dentro de uma faixa de itens adequados, não competir com pré-requisitos pedagógicos.

## 97. Pré-requisitos

Criar grafo de habilidades.

Exemplo:

```text
variáveis → condicionais → funções
arrays → callbacks → promises → async/await
SQL SELECT → filtros → JOIN → agregações → otimização
Git commit → branch → merge → rebase
HTTP básico → APIs → autenticação → idempotência
```

Uma habilidade pode ter múltiplos pré-requisitos.

## 98. Modo diagnóstico inicial

Novos usuários podem realizar um diagnóstico de 15–30 questões.

Objetivos:

- evitar obrigar desenvolvedor experiente a começar do zero;
- estimar habilidades iniciais;
- identificar lacunas;
- recomendar trilha.

O diagnóstico não deve gerar Mastery máximo. Ele cria apenas uma estimativa inicial que precisa ser confirmada por uso real.

## 99. Modos de sessão

A plataforma deve suportar:

- Missão do Dia;
- Revisão;
- Treino Livre;
- Foco em Habilidade;
- Diagnóstico;
- Bug Hunt;
- Code Review;
- Incidente;
- Sprint de 10 minutos;
- Desafio de projeto;
- Atividade atribuída pelo professor.

## 100. Missão diária v2

Uma missão padrão de cinco itens pode ser formada por:

1. uma revisão vencida;
2. uma habilidade fraca;
3. um item no nível atual;
4. um cenário profissional;
5. um item de exploração controlada.

Se o aluno possui muitas revisões atrasadas, a missão deve priorizar retenção antes de liberar muito conteúdo novo.

## 101. Missões profissionais

As missões profissionais são cadeias stateful de decisões.

Tipos iniciais:

- bug em produção;
- PR com regressão;
- conflito de merge;
- query lenta;
- falha de autenticação;
- endpoint inconsistente;
- teste flaky;
- container não sobe;
- deploy com configuração errada;
- incidente de latência;
- vulnerabilidade em entrada de dados;
- comunicação de incidente.

Cada etapa pode desbloquear informação adicional.

## 102. Sistema de incidentes

Um incidente deve possuir:

- contexto;
- impacto;
- timeline;
- logs;
- métricas;
- mudanças recentes;
- hipóteses possíveis;
- ações disponíveis;
- consequências;
- resolução;
- retrospectiva.

Pontuar raciocínio e coleta de evidência, não apenas a última resposta.

## 103. Code Review estruturado

Um exercício de review pode conter vários findings independentes.

Cada finding deve ter:

- categoria;
- severidade;
- trecho de código;
- explicação;
- sugestão;
- falso positivo permitido ou não;
- peso.

O aluno recebe pontuação por precisão e recall de problemas encontrados.

## 104. Execução de código futura

Quando a plataforma executar código do aluno:

- usar sandbox isolado;
- limitar CPU, memória, processos, disco e tempo;
- bloquear rede por padrão;
- destruir ambiente após execução;
- versionar runtime;
- registrar apenas dados necessários;
- impedir acesso a segredos do servidor.

A execução nunca deve ocorrer diretamente no processo da API principal.

## 105. Modelo de dados ampliado

Além das tabelas já definidas, adicionar:

### learning_paths
`id, name, slug, description, active`

### modules
`id, path_id, name, position, level`

### module_skills
`module_id, skill_id, position, required_mastery`

### skill_prerequisites
`skill_id, prerequisite_skill_id, minimum_mastery`

### question_versions
`id, question_id, version, payload_json, changed_by, change_reason, created_at`

### question_reviews_editorial
`id, question_id, reviewer_id, review_type, decision, notes, created_at`

### learning_sessions
`id, user_id, mode, started_at, ended_at, questions_answered, jxp_earned`

### mastery_events
`id, user_id, skill_id, question_id, before_value, delta, after_value, reason, created_at`

### user_skill_retention
`user_id, skill_id, stability, retention_estimate, next_review_at, last_review_at`

### assignments
`id, teacher_id, class_id, title, due_at, settings_json`

### assignment_items
`assignment_id, question_id, position`

### user_flags
`id, user_id, question_id, reason, comment, created_at`

### analytics_events
`id, user_id, session_id, event_name, properties_json, created_at`

## 106. Resposta flexível

`user_answers.answer` deve evoluir para `answer_payload JSONB`.

Exemplos:

```json
{"option_id":"b"}
```

```json
{"ordered_ids":["step_2","step_1","step_3"]}
```

```json
{"selected_findings":["f1","f4"]}
```

Isso evita criar uma tabela diferente para cada tipo de questão.

## 107. Índices recomendados no PostgreSQL

Índices iniciais:

```text
user_answers(user_id, answered_at desc)
user_answers(question_id, answered_at desc)
user_skill_progress(user_id, skill_id) unique
question_reviews(user_id, next_review_at)
questions(active, category_id, difficulty)
question_skills(skill_id, question_id)
xp_transactions(user_id, created_at desc)
mastery_events(user_id, skill_id, created_at desc)
analytics_events(event_name, created_at desc)
```

Índices devem ser validados com planos de execução reais.

## 108. Integridade e constraints

Regras importantes:

- `difficulty between 1 and 5`;
- `mastery between 0 and 100`;
- `xp >= 0` para recompensas normais;
- unique para slugs;
- FKs explícitas;
- `ON DELETE` escolhido conscientemente;
- uma questão publicada precisa ter ao menos uma skill;
- multiple choice precisa ter alternativas e exatamente a cardinalidade de respostas correta definida pelo tipo;
- versões publicadas não devem ser alteradas retroativamente.

## 109. API v2

Além dos endpoints atuais:

```text
GET  /v1/learning/session/recommendation
POST /v1/learning/sessions
GET  /v1/learning/sessions/:id/next
POST /v1/learning/sessions/:id/answers
POST /v1/learning/sessions/:id/finish

GET  /v1/progress/skills
GET  /v1/progress/retention
GET  /v1/progress/history
GET  /v1/progress/profile

GET  /v1/paths
GET  /v1/paths/:slug
POST /v1/paths/:slug/start

GET  /v1/reviews/due
POST /v1/questions/:id/flag

GET  /v1/teacher/classes/:id/heatmap
GET  /v1/teacher/classes/:id/misconceptions
POST /v1/teacher/assignments

POST /v1/admin/questions/import
POST /v1/admin/questions/validate
GET  /v1/admin/content/coverage
GET  /v1/admin/content/quality
```

## 110. Segurança da API

Regras adicionais:

- respostas corretas são avaliadas exclusivamente no servidor;
- IDs públicos não devem revelar respostas;
- rate limit por IP, usuário e endpoint sensível;
- tokens de sessão com expiração e rotação adequadas;
- autorização de professor limitada às turmas acessíveis;
- auditoria de alterações de conteúdo;
- importação de arquivos com validação rígida;
- logs nunca armazenam senha, token ou resposta secreta completa;
- proteção contra mass assignment;
- limites de tamanho para payloads;
- cabeçalhos de segurança no frontend.

## 111. Privacidade e LGPD

Coletar apenas dados necessários ao objetivo educacional.

O sistema deve documentar:

- finalidade de cada dado;
- retenção;
- base legal aplicável;
- acesso por professores;
- exportação dos dados do usuário;
- exclusão ou anonimização quando aplicável;
- tratamento de menores, caso a plataforma seja usada nesse público;
- política para analytics e cookies.

## 112. Eventos de analytics

Eventos recomendados:

- session_started;
- question_shown;
- answer_submitted;
- feedback_viewed;
- explanation_expanded;
- question_flagged;
- review_completed;
- daily_mission_completed;
- skill_level_changed;
- achievement_unlocked;
- session_abandoned;
- code_run;
- incident_step_completed.

Cada evento deve possuir schema versionado.

## 113. Métricas pedagógicas

Medir, no mínimo:

- retenção em 1, 7, 30 e 90 dias;
- ganho de mastery por hora de estudo;
- taxa de reaprendizagem após erro;
- diversidade de evidência por skill;
- diferença entre acerto imediato e acerto após intervalo;
- tempo até recuperar habilidade fraca;
- porcentagem de alunos presos em uma skill.

## 114. Métricas de qualidade de item

Para cada questão calcular:

- difficulty_empirical = 1 - taxa_de_acerto;
- tempo mediano e p90;
- abandono;
- taxa de cada distrator;
- discriminação aproximada entre grupos de maior e menor domínio;
- flags de ambiguidade;
- desempenho por versão do item;
- desempenho por nível estimado do aluno.

Não recalibrar dificuldade com amostras muito pequenas.

## 115. Regras automáticas de alerta editorial

Sinalizar uma questão quando:

- mais de 95% acertam após amostra mínima;
- menos de 20% acertam após amostra mínima;
- um distrator nunca é escolhido;
- dois distratores têm comportamento quase idêntico e irrelevante;
- há muitos flags de ambiguidade;
- tempo p90 é muito maior que o esperado;
- desempenho diverge muito entre versões;
- a explicação é aberta repetidamente após acerto, sugerindo incerteza;
- alunos avançados erram mais que iniciantes de modo persistente, o que pode indicar item defeituoso.

## 116. Detecção de comportamento anômalo

Sem transformar o produto em vigilância, o backend pode marcar padrões para revisão:

- centenas de respostas em poucos segundos;
- respostas idênticas em massa por múltiplas contas;
- chamadas diretas ao endpoint tentando enumerar respostas;
- automação agressiva;
- manipulação de relógio para streak;
- replay de requests de XP.

Nunca retirar nota automaticamente com base apenas em heurística. Registrar e revisar.

## 117. Acessibilidade

Requisitos mínimos:

- navegação por teclado;
- foco visível;
- labels e nomes acessíveis;
- contraste adequado;
- não depender apenas de cor;
- opção de reduzir animações;
- código com fonte legível e zoom;
- feedback de erro também em texto;
- tempo estendido ou sem limite quando a atividade não precisa ser cronometrada;
- compatibilidade com leitores de tela nas questões não visuais.

## 118. Responsividade

O fluxo principal deve funcionar em desktop e celular.

Questões com grandes blocos de código podem oferecer:

- rolagem horizontal controlada;
- quebra opcional;
- botão copiar;
- numeração de linhas quando relevante;
- modo tela cheia para review e debugging.

## 119. Internacionalização

Preparar desde o banco:

- `locale` da questão;
- textos fora do código em arquivos de tradução;
- exemplos de datas e números localizados;
- código mantido no idioma da linguagem;
- possibilidade de uma questão possuir versões traduzidas ligadas ao mesmo objetivo pedagógico.

## 120. Painel do aluno v2

Mostrar:

- JXP e nível de jornada;
- Ritmo de Código;
- missão recomendada;
- revisões vencidas;
- skills fortes e fracas;
- retenção recente;
- trilha atual;
- histórico de evolução;
- conquistas;
- atividades profissionais desbloqueadas.

Evitar um único percentual geral que esconda as diferenças entre habilidades.

## 121. Painel do professor v2

Além do painel atual:

- heatmap habilidade × aluno;
- erros conceituais mais frequentes;
- questões com suspeita de ambiguidade;
- retenção por turma;
- comparação entre primeira tentativa e revisão;
- alunos com baixa atividade;
- alunos ativos com baixo progresso, indicando possível dificuldade real;
- cobertura do conteúdo atribuído;
- exportação CSV.

## 122. Painel administrativo de conteúdo

Deve responder rapidamente:

- quantas questões existem por categoria, skill, nível e tipo;
- quais skills estão subcobertas;
- quantas estão em draft/review/published;
- quais itens precisam revisão;
- quais questões nunca foram exibidas;
- quais objetivos pedagógicos têm excesso de itens quase iguais;
- quando cada questão foi revisada pela última vez.

## 123. Importação em massa

O importador deve ter duas fases:

1. validar;
2. confirmar importação.

A validação deve gerar relatório por linha/registro sem interromper toda a importação no primeiro erro.

Erros possíveis:

- categoria inexistente;
- skill inexistente;
- dificuldade inválida;
- resposta fora das opções;
- ID duplicado;
- tipo incompatível com payload;
- explicação vazia;
- locale inválido;
- slug duplicado.

## 124. JSON como formato principal de banco editorial

CSV é útil para planilhas, mas JSON deve ser o formato canônico quando a questão possui estruturas aninhadas, múltiplas respostas, trechos de código ou steps ordenáveis.

O CSV pode carregar `options_json`, `answer_json` e `tags_json` serializados.

## 125. Versionamento

Nunca alterar silenciosamente uma questão já respondida.

Ao editar conteúdo publicado:

- incrementar versão;
- preservar versão anterior;
- guardar motivo;
- evitar comparar estatísticas de versões diferentes como se fossem o mesmo item;
- manter tentativas antigas apontando para a versão vista pelo aluno.

## 126. Cobertura dos 2.200 itens

A entrega de banco associada a este documento contém 2.200 rascunhos estruturados. Eles formam cobertura inicial e devem passar pelo pipeline editorial antes de publicação.

Meta posterior de qualidade:

- 100% com objetivo pedagógico;
- 100% com explicação;
- 100% com erro comum ou rationale;
- 100% ligados a skill;
- 100% versionados;
- 100% validados por schema;
- 100% tecnicamente revisados antes de `published`.

## 127. Critérios de aceitação do Learning Engine

O engine está funcional quando:

- não envia resposta correta antes da tentativa;
- consegue gerar sessão sem duplicatas recentes;
- respeita nível e pré-requisitos;
- inclui revisões vencidas;
- atualiza Mastery de forma auditável;
- registra transação de JXP;
- calcula próxima revisão;
- produz resultados determinísticos quando recebe seed de teste;
- suporta retry idempotente de submissão sem duplicar XP.

## 128. Idempotência de respostas

Toda submissão deve possuir `attempt_token` único.

Se o frontend repetir uma requisição por timeout, o servidor retorna o resultado original em vez de criar nova tentativa e novo XP.

## 129. Estratégia de cache

Pode ser usado cache para:

- categorias;
- skills;
- conteúdo publicado;
- leaderboard temporário;
- dashboard agregado.

Não cachear autorização ou progresso de forma que aceite dados obsoletos sem controle.

## 130. Observabilidade do próprio Developer Journey

Métricas técnicas:

- latência p50/p95/p99;
- taxa de erro;
- filas;
- conexões ao banco;
- queries lentas;
- cache hit rate;
- tempo para gerar missão;
- falhas de importação;
- jobs de revisão atrasados.

## 131. Jobs assíncronos

Fila de tarefas pode executar:

- recomputação de analytics;
- geração de relatórios;
- envio de notificações;
- recalibração de questões;
- importação grande;
- processamento de conquistas;
- geração de snapshots de leaderboard.

Não é necessário usar microserviços para isso. Um worker separado do mesmo monólito é suficiente inicialmente.

## 132. Notificações

Notificações devem ser úteis e configuráveis.

Tipos:

- revisões vencidas;
- missão ainda não concluída;
- feedback do professor;
- conquista;
- nova atividade atribuída;
- habilidade recuperada.

Evitar mecanismos de culpa ou mensagens excessivas.

## 133. Conquistas próprias

Exemplos alinhados à identidade do produto:

- Primeiro Build;
- Caçador de Bugs;
- Sem Medo do Merge;
- Query Detective;
- API First Responder;
- Mestre da Retenção;
- Reviewer Atento;
- Terminal Explorer;
- Refactor Seguro;
- 30 Dias de Ritmo;
- 100 Revisões Concluídas;
- Cinco Skills Proficientes.

Conquistas devem refletir comportamento desejável, não apenas volume.

## 134. Trilhas iniciais

Trilhas recomendadas:

### Fundamentos de Programação
Lógica → variáveis → condicionais → laços → funções → estruturas.

### Frontend Web
HTML → CSS → JavaScript → DOM → HTTP → TypeScript → testes.

### Backend Inicial
Fundamentos → HTTP → APIs → SQL → banco de dados → segurança → testes.

### Ferramentas de Desenvolvedor
Terminal → Git → GitHub → debugging → code review → CI/CD.

### Engenharia de Software
Clean Code → testes → code review → arquitetura → performance → segurança → incidentes.

### Python Inicial
Fundamentos → Python → estruturas de dados → debugging → testes → APIs.

## 135. Projetos futuros

Projetos devem avaliar mais que resposta correta.

Rubrica possível:

- funcionamento;
- testes;
- legibilidade;
- Git;
- tratamento de erro;
- segurança;
- documentação;
- justificativa de decisões.

O projeto pode gerar evidência para skills, mas nunca deve transformar uma avaliação subjetiva em precisão falsa.

## 136. IA na produção de conteúdo

Uso recomendado:

1. sistema identifica lacuna de cobertura;
2. professor escolhe objetivo;
3. IA propõe rascunhos;
4. validador automático executa schema e testes possíveis;
5. revisão editorial;
6. revisão técnica;
7. publicação limitada;
8. analytics reais;
9. promoção ou aposentadoria do item.

## 137. IA como tutor

Uma camada de tutor pode:

- explicar por outro ângulo;
- criar exemplo novo;
- fazer pergunta socrática;
- apontar pré-requisito ausente;
- resumir erro recorrente.

O tutor não deve simplesmente revelar a resposta antes da tentativa quando isso destrói o objetivo da atividade.

## 138. Requisitos de performance do MVP

Metas iniciais razoáveis para monitoramento, não garantias contratuais:

- dashboard carregado com poucas consultas agregadas;
- próxima questão obtida sem varrer o banco inteiro;
- submissão de resposta transacional;
- geração de missão calculada por candidatos indexados;
- importação de milhares de itens processada em lote.

Os valores absolutos de latência devem ser definidos após escolha da infraestrutura.

## 139. Estratégia de testes do sistema

Testes essenciais:

- unitários no Learning Engine;
- integração com PostgreSQL;
- autorização professor/aluno/admin;
- idempotência de XP;
- cálculo de streak/Ritmo;
- revisão espaçada;
- importação e validação;
- API sem vazamento de resposta;
- E2E do fluxo login → missão → feedback → progresso.

## 140. Seed de desenvolvimento

Ambiente local deve possuir seed reproduzível com:

- 3 alunos;
- 1 professor;
- 1 admin;
- categorias e skills;
- 100 questões de exemplo;
- histórico fictício;
- uma turma;
- algumas revisões vencidas;
- conquistas.

## 141. Ambientes

Separar:

- local;
- test;
- staging;
- production.

Nunca usar banco de produção para testes automatizados.

## 142. Feature flags

Funcionalidades experimentais podem ser ativadas por flag:

- ranking;
- ligas;
- tutor IA;
- execução de código;
- incidentes;
- novos algoritmos de mastery.

Isso permite comparar resultados sem grandes deploys reversíveis manualmente.

## 143. A/B tests

Experimentos podem testar experiência, não manipular nota.

Exemplos:

- quantidade de questões na missão;
- formato do feedback;
- ordem de explicação;
- apresentação do mapa de skills.

Nunca alterar a resposta correta ou prejudicar deliberadamente um grupo.

## 144. Critérios de lançamento do banco

Antes de colocar as 2.200 questões em produção:

- schema 100% válido;
- IDs únicos;
- respostas corretas verificadas;
- nenhuma questão com resposta vazia;
- explicações revisadas;
- amostra executável validada para questões de código;
- segurança revisada;
- cobertura por skill aprovada;
- itens avançados revisados por alguém com domínio técnico suficiente;
- importação testada em staging.

## 145. Estrutura de arquivos recomendada

```text
developer-journey-content/
├── schema/
│   └── question.schema.json
├── questions/
│   ├── fundamentals.json
│   ├── javascript.json
│   ├── typescript.json
│   ├── git.json
│   └── ...
├── paths/
├── skills/
├── migrations/
├── validation/
└── reports/
```

## 146. Estratégia de expansão além de 2.200

O banco deve crescer por lacuna de aprendizagem observada, não por meta de volume.

Prioridades futuras:

1. skills com pouca cobertura;
2. erros recorrentes;
3. skills com baixa retenção;
4. novos formatos;
5. cenários profissionais;
6. projetos;
7. especializações.

## 147. Especializações futuras

Possíveis expansões:

- React;
- Node.js;
- Java;
- C#/.NET;
- Python backend;
- dados;
- mobile;
- cloud;
- segurança;
- DevOps;
- QA;
- algoritmos para entrevistas.

Cada especialização deve ser um content pack independente, sem transformar o núcleo inicial em um catálogo impossível de manter.

## 148. Regra final de progressão

O usuário não deve subir porque decorou o banco.

Progressão confiável exige combinação de:

- variedade de questões;
- espaçamento temporal;
- diferentes formatos;
- dificuldade crescente;
- evidência aplicada;
- revisão de erros;
- exposição a cenários novos.

## 149. Entregáveis associados a esta especificação

A base de implementação deve ser composta por:

1. este documento de especificação;
2. banco JSON com 2.200 questões estruturadas;
3. versão CSV para inspeção/importação;
4. relatório de validação do banco;
5. schema lógico descrito neste documento;
6. pipeline editorial antes da publicação.

## 150. Definição de pronto da versão inicial

A primeira versão de produção pode ser considerada pronta quando:

- aluno consegue entrar e receber sessão adequada;
- resposta é corrigida no servidor;
- feedback ensina algo;
- JXP é auditável;
- Mastery é atualizado e explicado internamente;
- revisões são programadas;
- professor enxerga dificuldades;
- admin controla conteúdo;
- 2.200 itens podem ser importados sem edição manual individual;
- conteúdo pode ser versionado;
- sistema possui logs, métricas e backup;
- nenhuma regra essencial depende de IA externa.

A identidade do Developer Journey deve permanecer centrada em construir experiência de desenvolvimento, e não em apenas colecionar pontos.

## 151. Schema físico complementar

O pacote associado a esta versão inclui `Developer_Journey_schema_postgresql.sql`, com uma primeira modelagem física de usuários, categorias, skills, pré-requisitos, questões, versões, respostas, sessões, mastery, retenção, JXP, trilhas, turmas, atividades, revisão editorial e analytics. O schema é uma fundação e deve ser ajustado ao framework e à estratégia de migrations escolhidos.
