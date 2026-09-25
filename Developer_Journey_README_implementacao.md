# Developer Journey 2.0 — pacote de implementação

Este pacote transforma o documento-base em uma especificação mais próxima de produção.

## Arquivos

- `Developer_Journey_v2_completo.md`: documento original preservado + especificação ampliada.
- `Developer_Journey_v2_completo.txt`: mesma especificação em texto simples.
- `Developer_Journey_banco_2200_questoes.json`: 2.200 rascunhos estruturados para importação.
- `Developer_Journey_banco_2200_questoes.csv`: versão tabular do banco.
- `Developer_Journey_question_schema.json`: contrato JSON inicial de uma questão.
- `Developer_Journey_schema_postgresql.sql`: schema PostgreSQL de referência.
- `Developer_Journey_relatorio_validacao.md`: contagens e validação estrutural.
- `Developer_Journey_manifest.json`: resumo legível por máquina.

## Distribuição do banco

- 880 questões `beginner`.
- 880 questões `intermediate`.
- 440 questões `advanced`.
- 2.200 no total.

## Importante

Os itens do banco estão deliberadamente marcados como `draft_editorial_review`. Eles são uma base de conteúdo em escala, não uma alegação de que 2.200 perguntas geradas automaticamente estão prontas para publicação sem revisão humana.

A ordem segura de uso é:

1. criar banco PostgreSQL;
2. cadastrar categorias e skills;
3. validar JSON pelo schema;
4. importar questões como draft;
5. revisar tecnicamente/editorialmente;
6. publicar somente itens aprovados;
7. coletar analytics;
8. recalibrar dificuldade e cobertura.

## Separação essencial

- JXP mede atividade.
- Mastery mede evidência de conhecimento por habilidade.
- Retention mede recuperação após intervalo.
- Dev Profile agrega sinais para recomendação, sem ser tratado como prova absoluta de competência profissional.
