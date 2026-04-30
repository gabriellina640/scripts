# Setup local: Codex + International Kit (passo a passo)

Este guia é para você configurar **no seu computador** um fluxo sólido com Codex usando o kit curado deste repositório.

## 0) Pré-requisitos

- Git instalado
- Conta OpenAI com acesso ao Codex
- Um terminal (macOS/Linux/WSL recomendado)
- Editor (VS Code/Cursor etc.)

## 1) Clonar o kit

```bash
git clone <URL-DO-SEU-REPO> codex-international-kit
cd codex-international-kit
```

## 2) Criar seu projeto (ou conectar um existente)

### Opção A — Projeto novo

```bash
mkdir ../meu-projeto
cd ../meu-projeto
git init
```

### Opção B — Projeto já existente

```bash
cd /caminho/do/seu/projeto
```

## 3) Aplicar os arquivos-base do kit no seu projeto

No terminal do kit:

```bash
./bootstrap-project.sh /caminho/para/codex-international-kit /caminho/do/seu/projeto
```

O projeto consumidor deve ficar com `AGENTS.md` na raiz e `.codex-kit/{agents,skills,templates,docs}` para todo o restante do kit.

## 4) Instalar/abrir Codex no seu fluxo

No ambiente do Codex (CLI/App), abra a pasta raiz do seu projeto e confirme que ele consegue ler:

- `AGENTS.md`
- `.codex-kit/skills/`
- `.codex-kit/agents/code-reviewer.md`

Se o Codex já estiver aberto, reinicie a sessão após copiar os arquivos.

## 5) Rodar teste de fumaça (obrigatório)

No chat do Codex, envie este prompt:

```text
Leia o AGENTS.md e me diga: (1) fluxo padrão por tarefa, (2) regras obrigatórias, (3) checklist mínimo para concluir uma task.
```

**Esperado:** ele deve responder alinhado ao AGENTS e mencionar design → plano → execução → review → verificação → finalização.

## 6) Primeira execução real (pilotinho)

Use esta sequência:

1. Abra `.codex-kit/templates/design-template.md` e preencha com uma feature pequena.
2. Peça ao Codex para gerar um plano usando `.codex-kit/templates/implementation-plan-template.md`.
3. Execute tarefas atômicas com TDD quando aplicável.
4. Rode code review com `.codex-kit/skills/requesting-code-review` + `.codex-kit/agents/code-reviewer.md`.
5. Feche com `.codex-kit/skills/verification-before-completion`.

## 7) Prompt pronto para iniciar qualquer feature

```text
Quero implementar a feature abaixo seguindo estritamente AGENTS.md.
1) Faça um design curto usando .codex-kit/templates/design-template.md.
2) Gere um plano atômico usando .codex-kit/templates/implementation-plan-template.md.
3) Execute em etapas com validação por tarefa.
4) Antes de concluir, faça revisão com .codex-kit/agents/code-reviewer.md.
5) Finalize com checklist de .codex-kit/templates/review-checklist.md e verification-before-completion.

Feature:
<descreva aqui>
```

## 8) Guardrails recomendados para produção

- Exigir PR com escopo único
- Nunca aceitar "done" sem evidência de teste/build
- Bloquear merge com pendência crítica de review
- Versionar decisões de design (em `docs/` do seu projeto)

## 9) Erros comuns e correção rápida

- **Codex ignorou as regras**: reinicie a sessão e reforce "siga AGENTS.md estritamente".
- **Plano ficou genérico**: peça tasks com arquivo-alvo + validação por tarefa.
- **Sem testes**: reforce TDD para lógica de negócio antes de implementar.
- **Review superficial**: obrigue severidade (crítico/médio/baixo) + ações concretas.

## 10) Checklist final de ambiente pronto

- [ ] `AGENTS.md` presente na raiz do projeto
- [ ] pasta `.codex-kit/skills/` presente
- [ ] `.codex-kit/agents/code-reviewer.md` presente
- [ ] pasta `.codex-kit/templates/` presente
- [ ] smoke test do item 5 aprovado
- [ ] 1 feature piloto executada de ponta a ponta
