# 📚 Índice de Documentação

Bem-vindo ao **Codex International Kit**! Use este índice para navegar pela documentação.

---

## 🚀 Comece aqui

| Situação | Arquivo | Tempo |
|----------|---------|-------|
| **Sou novo no kit** | [00-GETTING-STARTED.md](00-GETTING-STARTED.md) | 15 min |
| **Quero entender filosofia** | [SUPERPOWERS-REFERENCE.md](SUPERPOWERS-REFERENCE.md) | 20 min |
| **Vou configurar agora** | ⬇️ Veja "Setup" | Varia |

---

## ⚙️ Setup e Configuração

### Para macOS + VS Code + Codex

1. **[01-setup-macos-passo-a-passo.md](setup/01-setup-macos-passo-a-passo.md)**
   - Preparação do macOS
   - Bootstrap do projeto
   - Validação de segurança
   - Smoke test
   - **Tempo:** 20-30 min

2. **[02-setup-local-codex.md](setup/02-setup-local-codex.md)**
   - Clonar o kit
   - Aplicar bootstrap
   - Teste de fumaça (obrigatório)
   - Primeira feature piloto
   - **Tempo:** 30-45 min

3. **[03-vscode-codex-replicavel.md](setup/03-vscode-codex-replicavel.md)**
   - Setup VS Code
   - Fluxo operacional diário
   - Adicionar novas skills
   - Replicação em múltiplos dispositivos
   - **Tempo:** 15-25 min

---

## 📖 Guias Operacionais

### [codex-internacional-level.md](guides/codex-internacional-level.md)

Guia para montar um repositório "nível internacional" focado em:
- Seleção de skills essenciais
- O que NÃO copiar
- Estrutura mínima recomendada
- AGENTS.md essencial
- Checklist de qualidade

---

## 🎯 Escolha rápida por objetivo

**Quero...** | **Vá para:**
---|---
Configurar agora no meu Mac | [01-setup-macos-passo-a-passo.md](setup/01-setup-macos-passo-a-passo.md)
Entender como usar o kit | [00-GETTING-STARTED.md](00-GETTING-STARTED.md)
Replicar em outro dispositivo | [03-vscode-codex-replicavel.md](setup/03-vscode-codex-replicavel.md)
Criar meu próprio kit internacional | [codex-internacional-level.md](guides/codex-internacional-level.md)
Entender filosofia de design | [SUPERPOWERS-REFERENCE.md](SUPERPOWERS-REFERENCE.md)

---

## 📊 Mapa da Documentação

```
.codex-kit/docs/
│
├── INDEX.md (você está aqui)
│
├── 00-GETTING-STARTED.md
│   └── Guia passo a passo para novatos
│
├── SUPERPOWERS-REFERENCE.md
│   └── Referência externa de filosofia
│
├── setup/
│   ├── 01-setup-macos-passo-a-passo.md
│   │   └── Setup seguro no macOS com bootstrap
│   ├── 02-setup-local-codex.md
│   │   └── Configuração local do Codex
│   └── 03-vscode-codex-replicavel.md
│       └── Setup VS Code e replicação
│
└── guides/
    └── codex-internacional-level.md
        └── Guia para repositório de nível internacional
```

---

## 🔗 Referências Rápidas

- **[AGENTS.md](../../../AGENTS.md)** — Seu mapa de skills local
- **[.instructions.md](../../../.instructions.md)** — Visão geral do projeto
- **[README.md](../../../README.md)** — Documentação principal
- **[bootstrap-project.sh](../../../bootstrap-project.sh)** — Script de replicação

---

## ✅ Checklist: "Estou pronto?"

- [ ] Li [00-GETTING-STARTED.md](00-GETTING-STARTED.md)
- [ ] Consultei [AGENTS.md](../../../AGENTS.md) do meu projeto
- [ ] Rodei `./verify-kit.sh`
- [ ] Executei smoke test em Codex
- [ ] Fiz 1 feature piloto completa (design → implementação → review → verificação)

---

## 💡 Dicas Gerais

1. **Sempre comece por [AGENTS.md](../../../AGENTS.md)** — é seu mapa de referência diária
2. **Smoke test é obrigatório** — valida que Codex entendeu sua estrutura
3. **Use bootstrap seguro** — sempre inspecione scripts antes de executar
4. **Replicação é fácil** — use `./bootstrap-project.sh` para novos projetos
5. **Customize com cuidado** — documente mudanças no seu kit-base

---

**Próximo passo?** [Vá para 00-GETTING-STARTED.md](00-GETTING-STARTED.md) ou [01-setup-macos-passo-a-passo.md](setup/01-setup-macos-passo-a-passo.md).
