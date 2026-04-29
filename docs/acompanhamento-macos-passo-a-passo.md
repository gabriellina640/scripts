# Acompanhamento guiado (macOS + VS Code + Codex)

Este é o roteiro de execução assistida para você configurar com segurança e validar tudo no macOS.

## Princípios de segurança que vamos aplicar

1. Nunca rodar script sem ler conteúdo antes.
2. Não versionar segredos (`.env`, tokens, chaves).
3. Confirmar permissões mínimas em arquivos executáveis.
4. Validar estrutura antes de começar a usar o Codex.

---

## Fase 1 — Preparação no macOS

### 1.1 Verificar ferramentas

```bash
sw_vers
xcode-select -p
git --version
```

Se `xcode-select -p` falhar:

```bash
xcode-select --install
```

### 1.2 Clonar kit-base

```bash
git clone <URL-DO-SEU-KIT> codex-international-kit
cd codex-international-kit
```

### 1.3 Validar integridade da estrutura

```bash
test -f AGENTS.md && echo "OK AGENTS"
test -f agents/code-reviewer.md && echo "OK reviewer"
test -d skills && echo "OK skills"
test -d templates && echo "OK templates"
```

---

## Fase 2 — Bootstrap seguro do projeto

### 2.1 Criar script local de bootstrap (compatível com macOS)

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
cp "$KIT_PATH/docs/acompanhamento-macos-passo-a-passo.md" "$PROJECT_PATH/docs-codex-acompanhamento.md"

echo "Bootstrap concluído em: $PROJECT_PATH"
SH
chmod 700 bootstrap-project.sh
```

### 2.2 Inspeção de segurança do script (antes de rodar)

```bash
sed -n '1,220p' bootstrap-project.sh
```

### 2.3 Aplicar no projeto real

```bash
./bootstrap-project.sh /caminho/para/codex-international-kit /caminho/para/meu-projeto
```

---

## Fase 3 — Hardening mínimo no projeto consumidor

Entre no projeto consumidor e crie `.gitignore` mínimo:

```bash
cat > .gitignore <<'EOF2'
.env
.env.*
*.pem
*.key
.DS_Store
EOF2
```

Valide arquivos sensíveis não rastreados:

```bash
git status --short
```

---

## Fase 4 — VS Code + Codex smoke test

1. Abra o projeto no VS Code
2. Inicie sessão do Codex
3. Rode o prompt:

```text
Leia AGENTS.md e responda objetivamente:
1) regras obrigatórias;
2) fluxo padrão por tarefa;
3) como vai executar review e verification-before-completion nesta tarefa.
```

Critério de aprovação:
- menciona design -> plano -> execução -> review -> verificação
- referencia `agents/code-reviewer.md`

---

## Fase 5 — Como adicionar novas skills com segurança

Estrutura:

```text
skills/<nome-da-skill>/
  SKILL.md
  references/ (opcional)
  scripts/ (opcional)
```

Checklist antes de adotar skill nova:

- [ ] Nome e objetivo claros
- [ ] Quando usar / quando não usar
- [ ] Passos verificáveis
- [ ] Critério de sucesso
- [ ] Sem segredos hardcoded
- [ ] Script revisado antes de `chmod +x`

---

## Fase 6 — Replicação em outro MacBook/dispositivo

Em nova máquina:

1. Instalar Git + VS Code + acesso ao Codex
2. Clonar kit-base
3. Repetir Fase 1 a Fase 4
4. Validar smoke test

Comandos principais são POSIX e compatíveis com macOS (bash + cp + test + sed).

---

## Prompt mestre para uso diário

```text
Siga estritamente o AGENTS.md.
- Faça design usando templates/design-template.md.
- Faça plano com templates/implementation-plan-template.md.
- Execute por tarefas atômicas com validação.
- Rode code review com skills/requesting-code-review + agents/code-reviewer.md.
- Finalize com verification-before-completion e checklist de templates/review-checklist.md.
- Mostre evidências técnicas e rollback.
```
