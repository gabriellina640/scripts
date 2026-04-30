# 🎯 Codex International Kit

Kit profissional para padronizar desenvolvimento assistido por Codex com foco em **previsibilidade, segurança, qualidade e replicabilidade**.

---

## ⚡ 30 segundos

- **O que é?** Sistema de skills reutilizável para trabalhar com agentes de IA
- **Para quem?** Pessoas que querem fluxo profissional em múltiplos projetos
- **Como começar?** Leia [`.instructions.md`](.instructions.md) ou [AGENTS.md](AGENTS.md)
- **Base em?** Adaptação local do projeto [Superpowers](https://github.com/morganwallace/superpowers)

---

## 📚 Documentação Principal

| Arquivo | Para quem? | Quando ler? |
|---------|-----------|-----------|
| [`.instructions.md`](.instructions.md) | Todos os usuários | **COMECE AQUI** — visão geral |
| [AGENTS.md](AGENTS.md) | Praticantes | Sempre — é seu mapa de skills |
| [`.codex-kit/docs/INDEX.md`](.codex-kit/docs/INDEX.md) | Todos | Navegação completa de docs |
| [`.codex-kit/docs/00-GETTING-STARTED.md`](.codex-kit/docs/00-GETTING-STARTED.md) | Novatos no kit | Seu guia passo a passo |
| [`.codex-kit/docs/setup/`](.codex-kit/docs/setup/) | Configuradores | Guias de setup (3 arquivos) |
| [`.codex-kit/docs/guides/`](.codex-kit/docs/guides/) | Arquitetos | Guias avançados |
| [`.codex-kit/docs/SUPERPOWERS-REFERENCE.md`](.codex-kit/docs/SUPERPOWERS-REFERENCE.md) | Arquitetos/revisores | Referência de filosofia |
| [README.md](README.md) | Este arquivo | Contexto técnico |

---

## 🎓 Entenda o projeto

### ✨ Este é um "repositório mestre"

- **Não é um produto final** — é uma base operacional
- **É 100% replicável** — copie em qualquer novo projeto
- **Tem dois sistemas:**
  - **AGENTS.md** = seu sistema local (nomenclaturas `.codex-kit/skills/...`)
  - **SUPERPOWERS-REFERENCE.md** = documentação de referência externa (leitura opcional)

### 🔍 Dois arquivos nunca misture

| Sistema | Arquivo | Nomenclatura | Contexto |
|---------|---------|--------------|---------|
| **Local** | `AGENTS.md` | `.codex-kit/skills/writing-plans/` | Seu projeto |
| **Referência** | `.codex-kit/docs/SUPERPOWERS-REFERENCE.md` | `superpowers:writing-skills` | Projeto original (não use!) |

---

## 📁 Estrutura

```
.
├── .instructions.md                  ← COMECE AQUI (visão geral)
├── AGENTS.md                         ← SEU MAPA DE SKILLS
├── README.md                         ← Este arquivo
├── bootstrap-project.sh              ← Script de replicação
├── verify-kit.sh                     ← Script de validação
├── .codex-kit/
│   ├── agents/                       ← Agentes auxiliares (ex: reviewer)
│   ├── skills/                       ← Skills acionáveis
│   │   ├── brainstorming/
│   │   ├── writing-plans/
│   │   ├── executing-plans/
│   │   ├── test-driven-development/
│   │   ├── systematic-debugging/
│   │   ├── requesting-code-review/
│   │   ├── receiving-code-review/
│   │   ├── verification-before-completion/
│   │   ├── subagent-driven-development/
│   │   ├── using-git-worktrees/
│   │   └── finishing-a-development-branch/
│   ├── templates/                    ← Modelos (design, plano, checklist)
│   └── docs/
│       ├── 00-GETTING-STARTED.md     ← Guia passo a passo
│       └── SUPERPOWERS-REFERENCE.md  ← Referência externa
└── LICENSE
```

### O que cada pasta faz

| Pasta | Propósito | Quando usar |
|-------|-----------|-----------|
| `.codex-kit/agents/` | Agentes que trabalham em conjunto | Quando você precisa de revisão, validação |
| `.codex-kit/skills/` | Implementação de cada skill | Sempre — é a base do trabalho |
| `.codex-kit/templates/` | Modelos prontos (design, plano) | Quando precisa de estrutura |
| `.codex-kit/docs/` | Guias e referências | Consulta ocasional |

---

## 🚀 Como começar

### Passo 1: Leia a visão geral
```bash
cat .instructions.md
```

### Passo 2: Estude seu mapa de skills
```bash
cat AGENTS.md
```

### Passo 3: Leia o guia detalhado
```bash
cat .codex-kit/docs/00-GETTING-STARTED.md
```

### Passo 4: Customize para seu projeto
```bash
# Edite AGENTS.md com seus skills e contexto
nano AGENTS.md
```

### Passo 5: Valide a estrutura
```bash
./verify-kit.sh
```

---

## 📋 Fluxo de trabalho profissional

```
1. Brainstorm / Design
   ↓
2. Plano Executável (tarefas atômicas)
   ↓
3. Execução Incremental (uma tarefa por vez)
   ↓
4. Code Review (validação de qualidade)
   ↓
5. Verificação Final (checklist objetivo)
   ↓
6. Merge / Encerramento de Branch
```

**Nunca pule etapas.** Cada etapa tem um skill correspondente em AGENTS.md.

---

## 🔒 Regras obrigatórias (gates)

Estas regras garantem qualidade e segurança:

1. ✋ **Não implementar sem design aprovado**
2. 📋 **Não iniciar sem plano executável por tarefas atômicas**
3. ✅ **Não concluir sem validação técnica registrada**
4. 👥 **Não concluir sem code review**
5. 🏁 **Não marcar "done" sem verificação final**

---

## ⚙️ Scripts

### `verify-kit.sh` — Valida estrutura
```bash
./verify-kit.sh
```
Verifica se pastas e arquivos essenciais existem.

### `bootstrap-project.sh` — Replica em outro projeto
```bash
./bootstrap-project.sh /caminho/para/este-repo /caminho/para/projeto-consumidor
```

**Exemplo:**
```bash
./bootstrap-project.sh ~/scripts ~/Projetos/auto-doc
```

---

## 💡 Como usar skills no dia a dia

### Manual (recomendado para crítico)
```
@use .codex-kit/skills/writing-plans/
ou
Use a skill .codex-kit/skills/systematic-debugging/ para esse bug
```

### Automático
Com AGENTS.md bem definido, o Codex tende a inferir skills por contexto, mas **para tarefas críticas prefira chamada explícita**.

---

## 🔒 Segurança Mínima

- ❌ Nunca commitar: `.env`, chaves, tokens, senhas
- ⚠️ Sempre revisar scripts antes de `chmod +x`
- 🛡️ Em dúvida: escolher segurança

---

## 🐛 Troubleshooting

### Erro: "agents: No such file or directory"
Seu layout pode estar híbrido. Garanta que exista:
```
.codex-kit/{agents,skills,templates}
```

**Solução:** Rode `./verify-kit.sh` para diagnosticar.

### Skills no projeto consumidor, mas não no repo mestre
Verifique:
```bash
pwd
git branch --show-current
find . -maxdepth 3 -type d | grep -E "skills|\.codex-kit" || true
```

Pode ser: branch errada, pasta errada, ou arquivos ocultos.

---

## 📊 Roadmap recomendado

- ✅ Consolidar somente `.codex-kit/skills` (sem duplicidades)
- ✅ Revisar AGENTS.md periodicamente
- ⏳ Adicionar skill UI/UX curada (se necessário)
- 🔄 Rodar `verify-kit.sh` antes de publicar alterações

---

## 📚 Referências

- **Superpowers (original):** https://github.com/morganwallace/superpowers
- **Documentação local:** Ver [`.instructions.md`](.instructions.md)

---

## 📄 Licença

MIT