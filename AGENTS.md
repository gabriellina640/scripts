# AGENTS.md — Sistema Operacional Profissional Codex

Este projeto utiliza um fluxo profissional com Codex focado em previsibilidade, segurança e entrega contínua.

## Estrutura oficial (organizada)



- `AGENTS.md` fica na **raiz**.

- Todo o restante do kit fica em `.codex-kit/`:

  - `.codex-kit/agents/`

  - `.codex-kit/skills/`

  - `.codex-kit/templates/`

  - `.codex-kit/docs/` (opcional)



## Regras obrigatórias (gates)



1. Não implementar sem design aprovado.

2. Não inicie sem plano repetitivo por tarefas atômicas.

3. Não concluí sem validação técnica registrada.

4. Não concluí sem revisão de código.

5. Não marque "done" sem seleção final.



## Roteador de habilidades: qual usar em cada situação



### 1) Ideia vaga / escopo confuso

- Use: `.codex-kit/skills/brainstorming/`

- Resultado esperado: design objetivo e escopo fechado.



### 2) Design aprovado e preciso executado com qualidade

- Use: `.codex-kit/skills/writing-plans/`

- Resultado esperado: plano com tarefas de 5–15 min, arquivos-alvo e validação por tarefa.



### 3) Execução normal com checkpoints

- Use: `.codex-kit/skills/executing-plans/`

- Resultado esperado: implementação incremental, uma tarefa por vez.



### 4) Execução com subagentes/revisão em cadeia

- Use: `.codex-kit/skills/subagent-driven-development/`

- Resultado esperado: correção com revisão de conformidade + qualidade.



### 5) Lógica crítica ou com risco de regressão

- Use: `.codex-kit/skills/test-driven-development/`

- Resultado esperado: ciclo RED-GREEN-REFACTOR.



### 6) Bug difícil / comportamento inconsistente

- Use: `.codex-kit/skills/systematic-debugging/`

- Resultado esperado: causa raiz identificada + correção validada.



### 7) Antes de fechar qualquer tarefa importante

- Use: `.codex-kit/skills/requesting-code-review/`

- Apoio: `.codex-kit/agents/code-reviewer.md`

- Resultado esperado: conclusões por severidade + correções.



### 8) Recebeu feedback e precisa responder com maturidade

- Use: `.codex-kit/skills/receiving-code-review/`

- Resultado esperado: resposta técnica clara + correções rastreáveis.



### 9) Finalização e evidência de conclusão

- Use: `.codex-kit/skills/verification-before-completion/`

- Resultado esperado: checklist objetivo + evidências demonstraveis.



### 10) Organização de filiais paralelas

- Use: `.codex-kit/skills/using-git-worktrees/`

- Resultado esperado: isolamento seguro entre frentes.



### 11) Encerramento de filial

- Use: `.codex-kit/skills/finishing-a-development-branch/`

- Resultado esperado: decisão de fusão/PR com validação final.



## Fluxo operacional



1. Brainstorming/design

2. Plano de execução

3. Execução por tarefa

4. Revisão de código

5. Verificação final

6. Encerramento de branch

## Segurança mínima obrigatória

- Nunca comprometa segredos (`.env`, chaves, tokens).

- Sempre verifique os scripts antes de `chmod +x` e execução.

- Em dúvida entre velocidade e segurança, escolha segurança.