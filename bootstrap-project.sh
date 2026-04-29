#!/usr/bin/env bash
set -euo pipefail

if [ $# -ne 2 ]; then
  echo "Uso: ./bootstrap-project.sh <KIT_PATH> <PROJECT_PATH>"
  exit 1
fi

KIT_PATH="$1"
PROJECT_PATH="$2"

mkdir -p "$PROJECT_PATH/.codex-kit"

<<<<<<< HEAD
# AGENTS fica na raiz
cp "$KIT_PATH/AGENTS.md" "$PROJECT_PATH/AGENTS.md"

# Kit fica centralizado em .codex-kit
rm -rf "$PROJECT_PATH/.codex-kit/agents" "$PROJECT_PATH/.codex-kit/skills" "$PROJECT_PATH/.codex-kit/templates" "$PROJECT_PATH/.codex-kit/docs"
=======
# AGENTS na raiz
cp "$KIT_PATH/AGENTS.md" "$PROJECT_PATH/AGENTS.md"

# Kit centralizado
rm -rf "$PROJECT_PATH/.codex-kit/agents" \
       "$PROJECT_PATH/.codex-kit/skills" \
       "$PROJECT_PATH/.codex-kit/templates" \
       "$PROJECT_PATH/.codex-kit/docs"

>>>>>>> origin/main
cp -R "$KIT_PATH/agents" "$PROJECT_PATH/.codex-kit/agents"
cp -R "$KIT_PATH/skills" "$PROJECT_PATH/.codex-kit/skills"
cp -R "$KIT_PATH/templates" "$PROJECT_PATH/.codex-kit/templates"
mkdir -p "$PROJECT_PATH/.codex-kit/docs"
cp -R "$KIT_PATH/docs/." "$PROJECT_PATH/.codex-kit/docs/"

<<<<<<< HEAD
# hardening básico
=======
# hardening mínimo
>>>>>>> origin/main
if [ ! -f "$PROJECT_PATH/.gitignore" ]; then
  cat > "$PROJECT_PATH/.gitignore" <<'GI'
.env
.env.*
*.pem
*.key
.DS_Store
GI
fi

echo "Bootstrap concluído: $PROJECT_PATH"
echo "Estrutura criada: AGENTS.md + .codex-kit/{agents,skills,templates,docs}"
