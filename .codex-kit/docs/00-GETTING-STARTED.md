# Guia Rapido - Como Usar o Codex Kit Pro

Este kit organiza o trabalho com Codex em etapas previsiveis. Use `AGENTS.md` como roteador diario.

## 1. Valide a estrutura

```bash
./verify-kit.sh
```

## 2. Escolha a skill pelo estado do trabalho

| Estado | Skill |
| --- | --- |
| Ideia vaga | `product-discovery` |
| Feature sem design | `brainstorming` |
| UI precisa ser diferente | `creative-direction` |
| UI pronta para construir | `interface-craft` |
| Projeto completo | `full-project-architecture` |
| API | `api-design` |
| Banco | `database-design` |
| Plano | `writing-plans` |
| Execucao | `executing-plans` ou `subagent-driven-development` |
| Bug | `systematic-debugging` |
| Seguranca antes | `security-threat-modeling` |
| Seguranca depois | `security-review` |
| Segredos/config | `secrets-and-config-audit` |
| Testes completos | `testing-strategy` |
| Performance | `performance-review` |
| UI review | `visual-quality-review` |
| Release | `observability-and-release-readiness` |

## 3. Siga os gates

1. Design aprovado antes de implementacao.
2. Plano atomico antes de editar.
3. Validacao tecnica antes de concluir.
4. Code review antes de fechar.
5. Verificacao final antes de dizer "done".

## 4. Fluxo recomendado para um projeto novo

```text
product-discovery
brainstorming
creative-direction
full-project-architecture
api-design / database-design
writing-plans
test-driven-development
executing-plans
security-threat-modeling / security-review
testing-strategy
performance-review
visual-quality-review
observability-and-release-readiness
requesting-code-review
verification-before-completion
```

Use apenas as etapas que fazem sentido para o projeto. Um script simples nao precisa de UI review; um SaaS publico precisa de seguranca e release readiness.

## 5. Como replicar

```bash
./bootstrap-project.sh /caminho/para/este-kit /caminho/para/projeto
```

Depois, no projeto consumidor:

```bash
./verify-kit.sh
cat AGENTS.md
```

## 6. Regra de codigo direto

Quando quiser somente codigo, peça:

`Only output code. Do not add comments or explanations.`

## 7. Onde olhar primeiro

- `AGENTS.md`: roteador oficial.
- `.instructions.md`: visao geral curta.
- `README.md`: estrutura e fluxo completo.
- `.codex-kit/skills/*/SKILL.md`: comportamento de cada skill.
