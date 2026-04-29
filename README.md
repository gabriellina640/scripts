# Codex International Kit

Kit profissional para padronizar desenvolvimento assistido por Codex com foco em:

- previsibilidade
- segurança
- qualidade de entrega
- replicação entre projetos/dispositivos

---

## Objetivo

Este repositório é o **repositório mestre de skills**.  
Ele não é o produto final; ele é a base operacional que você aplica em outros projetos.

---

## Estrutura oficial

```text
.
├── AGENTS.md
├── README.md
├── .gitignore
├── bootstrap-project.sh
├── verify-kit.sh
├── .codex-kit/
│   ├── agents/
│   ├── skills/
│   ├── templates/
│   └── docs/
└── LICENSE
```

Regras de organização
AGENTS.md fica na raiz.

Skills, agentes e templates ficam dentro de .codex-kit/.

Evite duplicar skills/ na raiz.

O que cada pasta faz
.codex-kit/agents/
Agentes auxiliares (ex.: reviewer).

.codex-kit/skills/
Skills acionáveis por contexto/prompt.

.codex-kit/templates/
Templates de design, plano e checklist.

.codex-kit/docs/
Guias operacionais e onboarding.

Skills incluídas
brainstorming

writing-plans

executing-plans

subagent-driven-development

test-driven-development

systematic-debugging

requesting-code-review

receiving-code-review

verification-before-completion

using-git-worktrees

finishing-a-development-branch

ui-ux-pro-max (opcional, se adicionada por você)

Bootstrap para um projeto consumidor
Use para aplicar este kit em um projeto real (ex.: auto-doc).

./bootstrap-project.sh /caminho/para/este-repo /caminho/para/projeto-consumidor
Exemplo:

./bootstrap-project.sh ~/scripts ~/Documents/projetos/auto-doc
Verificação do kit
Valida estrutura mínima e sintaxe do bootstrap:

./verify-kit.sh
Fluxo profissional de trabalho (resumo)
Brainstorm / design

Plano executável

Execução incremental

Code review

Verificação final

Encerramento da branch

Como chamar skills no dia a dia
Manual (recomendado quando crítico)
Exemplos de prompt:

Use a skill .codex-kit/skills/writing-plans/ para montar um plano atômico.

Use a skill .codex-kit/skills/systematic-debugging/ para esse bug intermitente.

Antes de concluir, rode requesting-code-review e verification-before-completion.

Automático
Com AGENTS.md bem definido, o Codex tende a inferir skills por contexto, mas para tarefas críticas prefira chamada explícita.

Segurança mínima obrigatória
Nunca commitar segredos (.env, tokens, chaves).

Revisar scripts antes de chmod +x e execução.

Em dúvida entre velocidade e segurança, escolher segurança.

Boas práticas de branch
Uma branch por objetivo.

Um PR por problema.

Commits pequenos e rastreáveis.

Sempre validar antes de merge.

Troubleshooting rápido
Erro no bootstrap: agents: No such file or directory
Seu layout de origem pode estar híbrido ou incompleto.
Garanta que exista um destes formatos:

.codex-kit/{agents,skills,templates}

{agents,skills,templates} na raiz

Skills aparecem no projeto consumidor, mas não no repo mestre
Verifique:

pwd
git branch --show-current
find . -maxdepth 3 -type d | grep -E "skills|\.codex-kit" || true
Pode ser branch errada, pasta errada ou arquivos ocultos (.codex-kit).

Roadmap recomendado
 Consolidar somente .codex-kit/skills (sem duplicidades)

 Revisar AGENTS.md periodicamente

 Adicionar skill UI/UX curada (se necessário)

 Rodar verify-kit.sh antes de publicar alterações no kit

Licença
MIT