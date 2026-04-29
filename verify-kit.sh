#!/usr/bin/env bash
set -euo pipefail

fail() { echo "[FAIL] $1"; exit 1; }
pass() { echo "[OK] $1"; }

[ -f AGENTS.md ] || fail "AGENTS.md ausente"
[ -f bootstrap-project.sh ] || fail "bootstrap-project.sh ausente"
[ -d skills ] || fail "skills/ ausente"
[ -d agents ] || fail "agents/ ausente"
[ -d templates ] || fail "templates/ ausente"
[ -f agents/code-reviewer.md ] || fail "agents/code-reviewer.md ausente"

bash -n bootstrap-project.sh || fail "bootstrap-project.sh com erro de sintaxe"
pass "Estrutura do kit validada"
