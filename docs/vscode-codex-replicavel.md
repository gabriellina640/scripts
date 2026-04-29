# VS Code + Codex International Kit (replicável em MacBook e outros dispositivos)

Guia definitivo para deixar seu ambiente funcional na IDE VS Code e replicar com consistência em qualquer máquina.

## Visão geral do que vamos padronizar

Você terá 2 repositórios:

1. **Kit-base** (este repo): guarda `AGENTS.md`, `skills/`, `agents/`, `templates/`
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
ls agents/code-reviewer.md
ls skills
ls templates
```

---

## Etapa 3 — Criar script de bootstrap para replicar em qualquer projeto

No kit-base, crie `bootstrap-project.sh`:

```bash
cat > bootstrap-project.sh <<'SH'
#!/usr/bin/env bash
set -euo pipefail

if [ $# -ne 2 ]; then
  echo "Uso: ./bootstrap-project.sh <KIT_PATH> <PROJECT_PATH>"
  exit 1
fi

KIT_PATH="$1"
PROJECT_PATH="$2"

mkdir -p "$PROJECT_PATH"
cp "$KIT_PATH/AGENTS.md" "$PROJECT_PATH/AGENTS.md"
rm -rf "$PROJECT_PATH/agents" "$PROJECT_PATH/skills" "$PROJECT_PATH/templates"
cp -R "$KIT_PATH/agents" "$PROJECT_PATH/agents"
cp -R "$KIT_PATH/skills" "$PROJECT_PATH/skills"
cp -R "$KIT_PATH/templates" "$PROJECT_PATH/templates"

cp "$KIT_PATH/docs/codex-internacional-setup.md" "$PROJECT_PATH/docs-codex-setup.md"
cp "$KIT_PATH/docs/setup-local-codex.md" "$PROJECT_PATH/docs-codex-local-setup.md"
cp "$KIT_PATH/docs/vscode-codex-replicavel.md" "$PROJECT_PATH/docs-codex-vscode.md"

echo "Bootstrap concluído em: $PROJECT_PATH"
SH
chmod +x bootstrap-project.sh
```

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
(3) como você vai aplicar skills/requesting-code-review e verification-before-completion nesta sessão.
```

Resultado esperado:
- resposta explícita sobre design -> plano -> execução -> review -> verificação
- referência clara ao `agents/code-reviewer.md`

---

## Etapa 6 — Fluxo operacional diário (padrão)

1. **Design**: preencher `templates/design-template.md`
2. **Plano**: preencher `templates/implementation-plan-template.md`
3. **Execução**: implementar em tarefas atômicas
4. **Review**: aplicar `skills/requesting-code-review` + `agents/code-reviewer.md`
5. **Validação final**: `skills/verification-before-completion`
6. **Entrega**: finalizar branch com `skills/finishing-a-development-branch`

---

## Etapa 7 — Como adicionar novas skills sem bagunçar o sistema

Crie pasta padrão:

```text
skills/<nome-da-skill>/
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
- [ ] Projeto com `AGENTS.md`, `skills/`, `agents/`, `templates/`
- [ ] Smoke test aprovado
- [ ] 1 feature piloto entregue com design/plano/review/verificação

---

## Prompt mestre (copiar e colar)

```text
Atue estritamente com base no AGENTS.md deste projeto.
1) Crie design curto usando templates/design-template.md.
2) Gere plano atômico usando templates/implementation-plan-template.md.
3) Execute por etapas com validação técnica por tarefa.
4) Faça revisão com skills/requesting-code-review e agents/code-reviewer.md.
5) Finalize com skills/verification-before-completion e checklist de templates/review-checklist.md.
6) Liste riscos, rollback e evidências de validação.
```
