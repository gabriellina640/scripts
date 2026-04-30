# 🚀 Guia Rápido — Como Usar Este Kit

Este é o **Codex Kit local** — um sistema de skills replicável para desenvolvimento assistido por IA.

---

## 1. Entenda os dois sistemas

### AGENTS.md (Seu sistema)
- **Localização:** `/AGENTS.md`
- **O que é:** Roteador local que define qual skill usar em cada situação
- **Exemplo:** Quando você precisa planejar uma tarefa, use `.codex-kit/skills/writing-plans/`
- **Quando consultar:** Toda vez que você está começando um tipo novo de trabalho

### SUPERPOWERS-REFERENCE.md (Filosofia externa)
- **Localização:** `/docs/SUPERPOWERS-REFERENCE.md`
- **O que é:** Cópia de referência da documentação do projeto Superpowers
- **Por que existe:** Para entender os princípios de design de skills de IA
- **Quando consultar:** Quando você quer entender COMO os skills devem ser moldados

---

## 2. Como replicar este projeto

Se você quer usar este kit em outro projeto:

```bash
# 1. Clone ou copie este repo
git clone https://github.com/gabriellina640/scripts.git meu-novo-projeto
cd meu-novo-projeto

# 2. Verifique a estrutura
./verify-kit.sh

# 3. Leia AGENTS.md para entender os skills disponíveis
cat AGENTS.md

# 4. Customize para seu projeto
# - Edite AGENTS.md com seus próprios skills
# - Copie skills que você quer manter
# - Remova skills que não vai usar
```

---

## 3. Fluxo de trabalho típico

1. **Você inicia uma tarefa**
   ```
   Tenho que fazer [X]
   ```

2. **Consulte AGENTS.md**
   ```
   Qual é a situação? (design? execução? debug?)
   → AGENTS.md dirá qual skill usar
   ```

3. **Use o skill indicado**
   ```
   @use .codex-kit/skills/writing-plans/
   ou
   @use .codex-kit/skills/executing-plans/
   ```

4. **O skill guia você através de checkpoints**
   - Design aprovado
   - Plano executável
   - Implementação com validação
   - Code review
   - Verificação final

---

## 4. Estrutura de pastas

```
.
├── AGENTS.md                          ← COMECE AQUI
├── README.md
├── .codex-kit/
│   ├── agents/                        ← Agentes auxiliares
│   ├── skills/                        ← Skills acionáveis
│   │   ├── brainstorming/
│   │   ├── writing-plans/
│   │   ├── executing-plans/
│   │   ├── test-driven-development/
│   │   ├── systematic-debugging/
│   │   ├── requesting-code-review/
│   │   ├── receiving-code-review/
│   │   └── ... (vários mais)
│   ├── templates/                     ← Modelos reutilizáveis
│   └── docs/
│       ├── 00-GETTING-STARTED.md      ← Você está aqui
│       └── SUPERPOWERS-REFERENCE.md   ← Referência externa
└── LICENSE
```

---

## 5. O que cada arquivo/pasta faz

| Item | Propósito | Quando usar |
|------|-----------|------------|
| **AGENTS.md** | Mapa de todos os skills e quando usá-los | Sempre, primeira coisa |
| **.codex-kit/skills/** | Implementação de cada skill | Quando AGENTS.md te orienta |
| **.codex-kit/agents/** | Agentes que trabalham junto com skills | Quando você precisa de revisão/validação |
| **.codex-kit/templates/** | Modelos prontos (PR, planos, etc) | Quando você precisa de estrutura |
| **.codex-kit/docs/** | Documentação e referências | Consulta ocasional |

---

## 6. Regras obrigatórias (gates)

Estas regras garantem qualidade:

1. ✋ **Não implementar sem design aprovado**
2. 📋 **Não iniciar sem plano executável por tarefas atômicas**
3. ✅ **Não concluir sem validação técnica registrada**
4. 👥 **Não concluir sem code review**
5. 🏁 **Não marcar "done" sem verificação final**

---

## 7. Exemplos de uso

### Exemplo 1: Você tem uma ideia vaga

```
"Preciso refatorar este componente"
↓
Consulte AGENTS.md, item "1) Ideia vaga / escopo confuso"
↓
Use: .codex-kit/skills/brainstorming/
↓
Resultado: design claro e escopo fechado
```

### Exemplo 2: Você tem design pronto e quer executar

```
"Meu design foi aprovado, preciso implementar"
↓
Consulte AGENTS.md, item "2) Design aprovado..."
↓
Use: .codex-kit/skills/writing-plans/
↓
Resultado: plano com tarefas atômicas
↓
Depois use: .codex-kit/skills/executing-plans/
↓
Resultado: implementação incremental e validada
```

### Exemplo 3: Você encontrou um bug difícil

```
"Comportamento inconsistente, não sei a causa"
↓
Consulte AGENTS.md, item "6) Bug difícil..."
↓
Use: .codex-kit/skills/systematic-debugging/
↓
Resultado: causa raiz identificada + correção validada
```

---

## 8. Como customizar para seu projeto

Edite `/AGENTS.md`:

```markdown
# AGENTS.md — Sistema Operacional [SEU PROJETO]

## Seu roteador local

### Quando você precisa [SUA SITUAÇÃO]
- Use: .codex-kit/skills/[SEU SKILL]/
- Resultado esperado: [O QUE VOCÊ VAI GANHAR]
```

---

## 9. Próximos passos

1. ✅ Leia este arquivo (pronto!)
2. ✅ Consulte `/AGENTS.md`
3. ✅ Explore `.codex-kit/skills/` para ver o que está disponível
4. 📝 Customize AGENTS.md para seu projeto
5. 🚀 Comece a usar os skills

---

## 10. Referências

- [AGENTS.md](/AGENTS.md) — Seu sistema local
- [SUPERPOWERS-REFERENCE.md](/docs/SUPERPOWERS-REFERENCE.md) — Filosofia de design
- [README.md](/README.md) — Visão geral do projeto

---

**Dúvidas?** Consulte AGENTS.md primeiro — 99% dos casos estão mapeados lá.
