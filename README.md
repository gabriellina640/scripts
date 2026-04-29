cat > README.md <<'EOF'
# Codex International Kit

Base profissional para operar Codex com segurança, design estruturado, revisão técnica e entrega previsível.

## Organização padrão

- `AGENTS.md` na raiz do projeto consumidor.
- Todo o kit em `.codex-kit/`:
  - `.codex-kit/agents/`
  - `.codex-kit/skills/`
  - `.codex-kit/templates/`
  - `.codex-kit/docs/`

## Bootstrap recomendado

No repositório do kit:

```bash
./bootstrap-project.sh /caminho/para/codex-international-kit /caminho/para/meu-projeto