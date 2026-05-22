#!/usr/bin/env bash
set -euo pipefail

fail() { echo "[FAIL] $1"; exit 1; }
pass() { echo "[OK] $1"; }

[ -f AGENTS.md ] || fail "AGENTS.md ausente"
[ -d .codex-kit ] || fail ".codex-kit/ ausente"
[ -d .codex-kit/skills ] || fail ".codex-kit/skills/ ausente"
[ -d .codex-kit/agents ] || fail ".codex-kit/agents/ ausente"
[ -d .codex-kit/templates ] || fail ".codex-kit/templates/ ausente"
[ -f .codex-kit/agents/code-reviewer.md ] || fail ".codex-kit/agents/code-reviewer.md ausente"
[ ! -e agents ] || fail "agents/ não deve existir na raiz"
[ ! -e skills ] || fail "skills/ não deve existir na raiz"
[ ! -e templates ] || fail "templates/ não deve existir na raiz"

required_skills=(
  product-discovery
  brainstorming
  creative-direction
  interface-craft
  visual-quality-review
  full-project-architecture
  api-design
  database-design
  writing-plans
  executing-plans
  subagent-driven-development
  test-driven-development
  systematic-debugging
  security-threat-modeling
  security-review
  secrets-and-config-audit
  testing-strategy
  performance-review
  observability-and-release-readiness
  requesting-code-review
  receiving-code-review
  verification-before-completion
  using-git-worktrees
  finishing-a-development-branch
)

for skill in "${required_skills[@]}"; do
  [ -f ".codex-kit/skills/$skill/SKILL.md" ] || fail "skill obrigatoria ausente: $skill"
done

for skill_dir in .codex-kit/skills/*; do
  [ -d "$skill_dir" ] || continue
  skill="$(basename "$skill_dir")"
  [ -f "$skill_dir/SKILL.md" ] || fail "SKILL.md ausente em $skill"
  grep -q "^name: $skill$" "$skill_dir/SKILL.md" || fail "frontmatter name inconsistente em $skill"
  grep -q "^description:" "$skill_dir/SKILL.md" || fail "frontmatter description ausente em $skill"
done

if [ -f bootstrap-project.sh ]; then
  bash -n bootstrap-project.sh || fail "bootstrap-project.sh com erro de sintaxe"
fi
bash -n verify-kit.sh || fail "verify-kit.sh com erro de sintaxe"
pass "Estrutura do Codex Kit Pro validada: AGENTS.md + .codex-kit com skills essenciais"
