# Guia prático: montar um repositório "Codex nível internacional"

Este documento destrincha o que realmente importa neste repositório (`superpowers`) para você criar um **outro repositório enxuto**, focado em qualidade de execução com Codex.

## Objetivo do novo repositório

Você quer um pacote mínimo e poderoso com:
- skills essenciais (sem excesso)
- agente de revisão de código
- boas práticas de engenharia
- estrutura pronta para uso com Codex

## O que aproveitar deste repositório

### 1) Núcleo de fluxo de desenvolvimento

Copiar estas skills:

- `.codex-kit/skills/brainstorming/`  
  Para transformar ideia vaga em especificação clara antes de codar.
- `.codex-kit/skills/writing-plans/`  
  Para gerar plano de implementação em tarefas pequenas e verificáveis.
- `.codex-kit/skills/executing-plans/`  
  Para executar o plano com checkpoints.
- `.codex-kit/skills/subagent-driven-development/`  
  Para delegar implementação + revisão em duas etapas.

**Por quê?** Esse bloco cria previsibilidade e reduz improviso.

### 2) Qualidade e segurança técnica

Copiar estas skills:

- `.codex-kit/skills/test-driven-development/`  
  Mantém disciplina de testes no ciclo RED-GREEN-REFACTOR.
- `.codex-kit/skills/systematic-debugging/`  
  Evita "tentativa e erro" e força análise de causa raiz.
- `.codex-kit/skills/verification-before-completion/`  
  Garante evidência antes de declarar "pronto".

### 3) Revisão de código (essencial para padrão internacional)

Copiar:

- `.codex-kit/skills/requesting-code-review/`
- `.codex-kit/skills/receiving-code-review/`
- `.codex-kit/agents/code-reviewer.md`

**Uso recomendado:** sempre passar por revisão antes de finalizar task/PR, com foco em:
- aderência ao plano
- riscos de regressão
- segurança
- legibilidade e manutenção

### 4) Operação de branch e entrega

Copiar:

- `.codex-kit/skills/using-git-worktrees/`
- `.codex-kit/skills/finishing-a-development-branch/`

Isso aumenta isolamento, rastreabilidade e qualidade de entrega.

## O que NÃO copiar (para manter enxuto)

Se seu foco é "setup Codex internacional" para software engineering geral, pode deixar de fora inicialmente:

- `.codex-kit/skills/writing-skills/` (só necessário se você for author de novas skills)
- `.codex-kit/skills/using-superpowers/` (documentação introdutória)
- `tests/` completos do projeto original
- `docs/plans/` e `docs/superpowers/plans/` históricos
- artefatos de marketplace/plataforma específica que não use agora

## Estrutura sugerida para o novo repositório

```text
codex-international-kit/
  README.md
  AGENTS.md
  .codex-kit/
    agents/
      code-reviewer.md
    skills/
      brainstorming/
      writing-plans/
      executing-plans/
      subagent-driven-development/
      test-driven-development/
      systematic-debugging/
      verification-before-completion/
      requesting-code-review/
      receiving-code-review/
      using-git-worktrees/
      finishing-a-development-branch/
    templates/
      design-template.md
      implementation-plan-template.md
      review-checklist.md
```

## AGENTS.md mínimo recomendado (novo repo)

No seu novo repositório, crie um `AGENTS.md` com estas diretrizes base:

1. Nunca implementar sem design mínimo aprovado.
2. Sempre gerar plano em tarefas pequenas (2–10 min por task).
3. Aplicar TDD quando houver lógica testável.
4. Rodar revisão de código obrigatória antes de concluir tarefa.
5. Exigir verificação objetiva (testes/lint/build) antes de fechar.
6. Proibir "done" sem evidência executável.

## Ordem operacional recomendada no dia a dia

1. `brainstorming` → fechar escopo
2. `writing-plans` → criar plano executável
3. `executing-plans` ou `subagent-driven-development` → implementar
4. `requesting-code-review` + `.codex-kit/agents/code-reviewer.md` → revisar
5. `verification-before-completion` → validar
6. `finishing-a-development-branch` → preparar merge/PR

## Checklist de qualidade "nível internacional"

- Especificação clara e versionada
- Plano com tarefas atômicas e critério de aceite
- Testes automatizados para regras críticas
- Revisão de código com severidade (alto/médio/baixo)
- Evidência de execução (logs de teste/build/lint)
- PR com escopo único e impacto explícito
- Pós-merge com observabilidade mínima (logs/métricas, quando aplicável)

## Próximo passo (aplicação prática)

1. Criar o novo repositório com a estrutura acima.
2. Copiar apenas os diretórios listados em "O que aproveitar".
3. Adaptar o `AGENTS.md` ao seu stack (Node, Python, Go etc.).
4. Rodar um projeto piloto pequeno (1 feature) usando o fluxo completo.
5. Ajustar prompts/checklists com base no que travar no piloto.
