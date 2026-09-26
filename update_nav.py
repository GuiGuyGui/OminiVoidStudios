import glob
import re

nav_links_template = """<ul class="nav-links">
\t\t\t\t<li><a href="index.html" class="nav-link {active_index}">Início</a></li>
\t\t\t\t<li><a href="jornada.html" class="nav-link {active_jornada}">⚡ Jornada Dev</a></li>
\t\t\t\t<li><a href="kairo.html" class="nav-link {active_kairo}">⚠️ Kairo</a></li>
\t\t\t\t<li><a href="orcamento.html" class="nav-link {active_orcamento}">Serviços &amp; Orçamento</a></li>
\t\t\t\t<li><a href="jogos.html" class="nav-link {active_jogos}">Jogos</a></li>
\t\t\t\t<li><a href="quiz.html" class="nav-link {active_quiz}">Teste Dev</a></li>
\t\t\t\t<li><a href="projetos.html" class="nav-link {active_projetos}">Projetos</a></li>
\t\t\t\t<li><a href="devchat.html" class="nav-link {active_devchat}">Conversa Dev</a></li>
\t\t\t\t<li><a href="sobre.html" class="nav-link {active_sobre}">Sobre Mim</a></li>
\t\t\t</ul>"""

pages = {
    'index.html': 'active_index',
    'jornada.html': 'active_jornada',
    'kairo.html': 'active_kairo',
    'orcamento.html': 'active_orcamento',
    'jogos.html': 'active_jogos',
    'quiz.html': 'active_quiz',
    'projetos.html': 'active_projetos',
    'devchat.html': 'active_devchat',
    'sobre.html': 'active_sobre'
}

for fpath in glob.glob("*.html"):
    with open(fpath, "r", encoding="utf-8", errors="ignore") as f:
        content = f.read()

    active_dict = {k: "" for k in pages.values()}
    active_key = pages.get(fpath)
    if active_key:
        active_dict[active_key] = "active"

    current_nav = nav_links_template.format(**active_dict)

    if '<ul class="nav-links">' in content:
        content_mod = re.sub(r'<ul class="nav-links">[\s\S]*?</ul>', current_nav, content)
        with open(fpath, "w", encoding="utf-8") as f:
            f.write(content_mod)
        print(f"Updated navbar in {fpath}")
