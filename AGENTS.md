# AGENTS.md — Operating System do Repositório

Este repositório é uma base profissional para execução com Codex.

## Regras obrigatórias (não negociáveis)

1. **Sem implementação sem design aprovado**
   - Antes de codar, produzir design curto (objetivo, escopo, riscos, critérios de aceite).
2. **Sem design sem plano executável**
   - Toda implementação deve virar tarefas pequenas (2–15 min), com arquivos-alvo e validação.
3. **Sem mudança sem teste/validação**
   - Preferir TDD para lógica de negócio.
   - Sempre registrar evidência de validação (teste, lint, build, smoke).
4. **Sem conclusão sem code review**
   - Passar por `skills/requesting-code-review` + `agents/code-reviewer.md`.
5. **Sem "done" sem checklist final**
   - Aplicar `skills/verification-before-completion` antes de fechar.

## Fluxo padrão por tarefa

1. `skills/brainstorming`
2. `skills/writing-plans`
3. `skills/executing-plans` **ou** `skills/subagent-driven-development`
4. `skills/requesting-code-review` + `agents/code-reviewer.md`
5. `skills/verification-before-completion`
6. `skills/finishing-a-development-branch`

## Critérios de qualidade (padrão internacional)

- Mudança pequena e reversível
- Escopo explícito e sem feature creep
- Risco mapeado
- Evidência técnica anexada
- Segurança considerada (inputs, segredos, permissões)
- Legibilidade e manutenção em primeiro plano

## Política de segurança

- Nunca expor segredos em código, logs ou commits.
- Não confiar em input externo sem validação.
- Evitar ações destrutivas sem confirmação explícita do humano.
- Em dúvida entre velocidade e segurança, escolher segurança.
