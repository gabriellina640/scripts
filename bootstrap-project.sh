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