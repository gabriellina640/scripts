# VS Code + Codex International Kit (replicável em MacBook e outros dispositivos)

Guia definitivo para deixar seu ambiente funcional na IDE VS Code e replicar com consistência em qualquer máquina.

## Visão geral do que vamos padronizar

Você terá 2 repositórios:

1. **Kit-base** (este repo): guarda `AGENTS.md`, `.codex-kit/skills/`, `.codex-kit/agents/`, `.codex-kit/templates/`
2. **Projeto de produto**: onde seu código real roda

A regra é: o kit-base é sua "fonte de verdade" e é aplicado aos projetos.

---

## Etapa 1 — Preparar VS Code

1. Instale VS Code
2. Instale Git
3. Faça login no Codex (CLI/App conforme seu fluxo)
4. No VS Code, abra o terminal integrado

Validação rápida:

```bash
git --version
```

---

## Etapa 2 — Clonar o kit-base

```bash
git clone <URL-DO-SEU-KIT> codex-international-kit
cd codex-international-kit
```

Confirme arquivos-chave:

```bash
ls AGENTS.md
ls .codex-kit/agents/code-reviewer.md
ls .codex-kit/skills
ls .codex-kit/templates
```

---

## Etapa 3 — Usar o script de bootstrap versionado

Este kit já possui `bootstrap-project.sh`. Ele deve criar somente `AGENTS.md` na raiz do projeto consumidor e colocar o restante em `.codex-kit/{agents,skills,templates,docs}`.

---

## Etapa 4 — Aplicar kit em um projeto real

Exemplo:

```bash
cd /caminho/para/codex-international-kit
./bootstrap-project.sh /caminho/para/codex-international-kit /caminho/para/meu-projeto
```

No VS Code: `File -> Open Folder -> meu-projeto`.

---

## Etapa 5 — Smoke test no Codex dentro do VS Code

No chat do Codex, use:

```text
Leia AGENTS.md e me diga: (1) regras obrigatórias, (2) fluxo padrão por tarefa,
(3) como você vai aplicar .codex-kit/skills/requesting-code-review e verification-before-completion nesta sessão.
```

Resultado esperado:
- resposta explícita sobre design -> plano -> execução -> review -> verificação
- referência clara ao `.codex-kit/agents/code-reviewer.md`

---

## Etapa 6 — Fluxo operacional diário (padrão)

1. **Design**: preencher `.codex-kit/templates/design-template.md`
2. **Plano**: preencher `.codex-kit/templates/implementation-plan-template.md`
3. **Execução**: implementar em tarefas atômicas
4. **Review**: aplicar `.codex-kit/skills/requesting-code-review` + `.codex-kit/agents/code-reviewer.md`
5. **Validação final**: `.codex-kit/skills/verification-before-completion`
6. **Entrega**: finalizar branch com `.codex-kit/skills/finishing-a-development-branch`

---

## Etapa 7 — Como adicionar novas skills sem bagunçar o sistema

Crie pasta padrão:

```text
.codex-kit/skills/<nome-da-skill>/
  SKILL.md
  references/   (opcional)
  scripts/      (opcional)
```

### Regras para adicionar skill

1. Nome claro e objetivo (`security-hardening`, `db-migrations-safe`, etc.)
2. `SKILL.md` deve conter:
   - Quando usar
   - Quando NÃO usar
   - Passos práticos
   - Critérios de sucesso
3. Se houver scripts, manter em `scripts/` e chamar pelo caminho relativo
4. Testar skill em 1 tarefa piloto antes de generalizar

### Onde registrar skill nova

- Atualize o `README.md` do projeto consumidor
- Opcional: manter `docs/skills-catalog.md` com:
  - nome
  - objetivo
  - trigger (quando chamar)
  - owner

---

## Etapa 8 — Replicação em MacBook e outros dispositivos (sem dor)

Em cada novo dispositivo:

1. Instale Git + VS Code + acesso ao Codex
2. Clone seu kit-base
3. Rode `bootstrap-project.sh` para cada projeto
4. Abra no VS Code e execute o smoke test

Prática recomendada:
- manter o kit-base versionado (branch principal estável)
- versionar melhorias no kit via PR pequeno
- usar tag de versão do kit (`v1`, `v1.1`, etc.)

---

## Etapa 9 — Checklist de ambiente realmente pronto

- [ ] VS Code com terminal funcionando
- [ ] Codex acessível na máquina
- [ ] Projeto com `AGENTS.md`, `.codex-kit/skills/`, `.codex-kit/agents/`, `.codex-kit/templates/`
- [ ] Smoke test aprovado
- [ ] 1 feature piloto entregue com design/plano/review/verificação

---

## Prompt mestre (copiar e colar)

```text
Atue estritamente com base no AGENTS.md deste projeto.
1) Crie design curto usando .codex-kit/templates/design-template.md.
2) Gere plano atômico usando .codex-kit/templates/implementation-plan-template.md.
3) Execute por etapas com validação técnica por tarefa.
4) Faça revisão com .codex-kit/skills/requesting-code-review e .codex-kit/agents/code-reviewer.md.
5) Finalize com .codex-kit/skills/verification-before-completion e checklist de .codex-kit/templates/review-checklist.md.
6) Liste riscos, rollback e evidências de validação.
```
