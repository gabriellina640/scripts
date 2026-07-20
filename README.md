# Codex Kit Pro

Kit profissional para desenvolvimento assistido por Codex com foco em **produto, arquitetura, UI viva e unica, seguranca, testes, performance e release**.

## 30 segundos

- **O que e?** Um sistema de skills reutilizavel para criar projetos completos com agentes de IA.
- **Para quem?** Quem quer um fluxo replicavel, seguro, criterioso e menos generico.
- **Como comecar?** Leia este README e use `AGENTS.md` como roteador.
- **Como validar o kit mestre?** Rode `./verify-kit.sh` em `~/scripts`.

## Regra principal

Use **rigor proporcional** e uma skill lider por fase. Skills nao competem: a skill atual entrega um artefato claro e aponta a proxima etapa.

```text
Decidir -> Planejar -> Implementar -> Revisar -> Verificar -> Lançar
```

### Modos de trabalho

```text
Direto   -> tarefa simples, resposta curta, verificacao proporcional
Normal   -> feature media, design curto, plano curto, validacao objetiva
Rigoroso -> produto/release/risco alto, fluxo completo com reviews
```

No modo direto, nao crie design doc, plano formal ou review obrigatorio. Use o menor processo que preserve seguranca e qualidade.

Nunca pule estes gates no modo rigoroso:

1. Nao implementar sem design aprovado.
2. Nao iniciar sem plano executavel por tarefas atomicas.
3. Nao concluir sem validacao tecnica registrada.
4. Nao concluir sem code review.
5. Nao marcar "done" sem verificacao final.

## Fluxo Rigoroso

Use este fluxo para projetos completos, sensiveis ou perto de release:

```text
1. product-discovery
2. brainstorming
3. creative-direction        # obrigatorio para qualquer UI
4. full-project-architecture
5. api-design                # se tiver API/backend
6. database-design           # se tiver persistencia
7. security-threat-modeling  # se tiver auth, dados privados, upload, pagamento, API publica
8. interface-craft           # se tiver UI
9. writing-plans
10. test-driven-development  # para logica/bugfix
11. executing-plans ou subagent-driven-development
12. testing-strategy
13. security-review
14. secrets-and-config-audit
15. performance-review
16. visual-quality-review    # se tiver UI
17. observability-and-release-readiness
18. requesting-code-review
19. verification-before-completion
20. finishing-a-development-branch
```

Nem todo projeto precisa de todas. Um script simples deve usar modo direto. Um produto real com usuarios deve usar quase todas.

## Regra Fixa Para Design Vivo E Unico

Para qualquer projeto importante com interface, o caminho de design e:

```text
creative-direction -> interface-craft -> visual-quality-review
```

Nao use `ui-ux-pro-max` como skill principal. Ela existe apenas por compatibilidade com prompts antigos.

Hierarquia visual:

- Ajustes pequenos em UI existente podem seguir o design ja presente em modo direto.
- `creative-direction` decide a personalidade, tese visual, assets, composicao e anti-padroes.
- `interface-craft` implementa exatamente essa direcao.
- `visual-quality-review` pode rejeitar a UI se ela ficar generica, mesmo que esteja tecnicamente funcionando.
- `brainstorming`, `full-project-architecture`, `writing-plans` e `executing-plans` nao podem redefinir a direcao visual aprovada.

Prompt recomendado:

```text
Use `.codex-kit/skills/creative-direction/` para criar uma direcao visual viva, unica e especifica para este produto. Evite qualquer resultado generico de SaaS/template. Nao implemente ainda.
```

Depois da direcao aprovada:

```text
Use `.codex-kit/skills/interface-craft/` para transformar a direcao aprovada em telas, componentes, estados, responsividade, assets e interacoes. Nao simplifique para visual generico.
```

Depois da UI implementada:

```text
Use `.codex-kit/skills/visual-quality-review/` para revisar screenshots e rejeitar qualquer coisa generica, sem vida, desalinhada, quebrada ou pobre em responsividade/acessibilidade.
```

## Como Chamar Cada Skill

### Produto

Use quando a ideia ainda esta vaga:

```text
Use `.codex-kit/skills/product-discovery/` para transformar esta ideia em um briefing de produto com usuario, problema, promessa, fluxo principal, MVP, nao-escopo, riscos e criterios de sucesso. Nao implemente.
```

### Design De Comportamento

Use quando precisa definir a feature antes da arquitetura:

```text
Use `.codex-kit/skills/brainstorming/` para fechar o design da feature. Faca perguntas uma por vez e nao implemente ate eu aprovar.
```

### Arquitetura

Use depois do produto/design aprovado:

```text
Use `.codex-kit/skills/full-project-architecture/` para definir stack, modulos, fronteiras, fluxos, estado, auth, erros, testes, performance e release. Nao escreva codigo.
```

### API

Use quando houver backend, rotas, webhook ou integracao:

```text
Use `.codex-kit/skills/api-design/` para definir consumidores, endpoints, schemas, validacao, erros, auth, autorizacao, paginacao, idempotencia, rate limit, versionamento e testes. Nao implemente.
```

### Banco

Use quando houver persistencia:

```text
Use `.codex-kit/skills/database-design/` para definir entidades, relacoes, constraints, indices, dados sensiveis, migracoes, rollback e queries esperadas. Nao implemente.
```

### Seguranca Antes

Use antes de implementar fluxos sensiveis:

```text
Use `.codex-kit/skills/security-threat-modeling/` para mapear ativos, atores, trust boundaries, abusos provaveis, mitigacoes, testes de seguranca e riscos residuais.
```

### Plano

Use quando design e arquitetura estao aprovados:

```text
Use `.codex-kit/skills/writing-plans/` para criar um plano executavel por tarefas atomicas, com arquivos-alvo, testes, comandos, resultados esperados e checkpoints.
```

### TDD

Use para logica critica, bugfix ou comportamento novo:

```text
Use `.codex-kit/skills/test-driven-development/` para implementar esta mudanca com RED-GREEN-REFACTOR. Primeiro escreva o teste falhando.
```

### Execucao

Use quando ja existe plano:

```text
Use `.codex-kit/skills/executing-plans/` para executar o plano tarefa por tarefa, seguindo os checkpoints e validacoes.
```

Se houver subagentes disponiveis:

```text
Use `.codex-kit/skills/subagent-driven-development/` para executar o plano com implementador, revisao de conformidade e revisao de qualidade por tarefa.
```

### Debug

Use quando algo falhar:

```text
Use `.codex-kit/skills/systematic-debugging/` para investigar causa raiz antes de propor qualquer correcao.
```

### Testes

Use para produto maior ou antes de release:

```text
Use `.codex-kit/skills/testing-strategy/` para criar uma matriz de testes por risco: unit, integration, contract, e2e, visual, smoke, regressao, CI e gaps aceitos.
```

### Revisao De Seguranca

Use antes de fechar feature sensivel:

```text
Use `.codex-kit/skills/security-review/` para revisar auth, autorizacao, inputs, outputs, dados sensiveis, abuso, dependencias, config e deploy. Findings por severidade.
```

### Segredos E Config

Use quando houver env, CI, deploy, SDK keys ou logs:

```text
Use `.codex-kit/skills/secrets-and-config-audit/` para auditar .env, tokens, chaves, variaveis publicas/privadas, logs, exemplos e necessidade de rotacao.
```

### Performance

Use antes de release ou se estiver lento:

```text
Use `.codex-kit/skills/performance-review/` para revisar caminhos criticos, bundle, imagens, render, API, queries, cache, loading states e evidencias de performance.
```

### Release

Use antes de publicar/entregar:

```text
Use `.codex-kit/skills/observability-and-release-readiness/` para checar logs, erros, metricas, health checks, env vars, migracoes, rollback, smoke test e riscos residuais.
```

### Code Review

Use antes de concluir trabalho importante:

```text
Use `.codex-kit/skills/requesting-code-review/` com base no diff atual, no plano aprovado e nos testes executados.
```

Se receber feedback:

```text
Use `.codex-kit/skills/receiving-code-review/` para verificar cada item tecnicamente antes de implementar ou contestar.
```

### Verificacao Final

Use antes de dizer que terminou:

```text
Use `.codex-kit/skills/verification-before-completion/` para rodar comandos frescos, ler saida e registrar evidencia antes de afirmar que esta pronto.
```

### Worktrees E Branch

Para isolamento:

```text
Use `.codex-kit/skills/using-git-worktrees/` para criar um workspace isolado antes de executar um plano.
```

Para fechar:

```text
Use `.codex-kit/skills/finishing-a-development-branch/` para decidir merge local, PR, manter branch ou descartar com validacao.
```

## Fluxos Prontos

### Site ou landing page com visual forte

```text
1. product-discovery
2. creative-direction
3. interface-craft
4. writing-plans
5. executing-plans
6. visual-quality-review
7. performance-review
8. requesting-code-review
9. verification-before-completion
```

### SaaS completo com login, API e banco

```text
1. product-discovery
2. brainstorming
3. creative-direction
4. full-project-architecture
5. api-design
6. database-design
7. security-threat-modeling
8. interface-craft
9. writing-plans
10. test-driven-development
11. subagent-driven-development
12. testing-strategy
13. security-review
14. secrets-and-config-audit
15. performance-review
16. visual-quality-review
17. observability-and-release-readiness
18. requesting-code-review
19. verification-before-completion
20. finishing-a-development-branch
```

### Bug dificil

```text
1. systematic-debugging
2. test-driven-development
3. executing-plans
4. requesting-code-review
5. verification-before-completion
```

### Mudanca de API

```text
1. api-design
2. security-threat-modeling
3. writing-plans
4. test-driven-development
5. executing-plans
6. security-review
7. testing-strategy
8. verification-before-completion
```

## Tabela Completa De Skills

| Situacao | Skill |
| --- | --- |
| Ideia vaga ou produto novo | `.codex-kit/skills/product-discovery/` |
| Feature sem design aprovado | `.codex-kit/skills/brainstorming/` |
| UI viva, especifica e nao-generica | `.codex-kit/skills/creative-direction/` |
| Implementar interface polida | `.codex-kit/skills/interface-craft/` |
| Revisar UI por qualidade visual | `.codex-kit/skills/visual-quality-review/` |
| Arquitetura completa | `.codex-kit/skills/full-project-architecture/` |
| API e contratos | `.codex-kit/skills/api-design/` |
| Banco e persistencia | `.codex-kit/skills/database-design/` |
| Plano executavel | `.codex-kit/skills/writing-plans/` |
| Execucao incremental | `.codex-kit/skills/executing-plans/` |
| Execucao com subagentes | `.codex-kit/skills/subagent-driven-development/` |
| TDD | `.codex-kit/skills/test-driven-development/` |
| Debug dificil | `.codex-kit/skills/systematic-debugging/` |
| Threat modeling | `.codex-kit/skills/security-threat-modeling/` |
| Revisao de seguranca | `.codex-kit/skills/security-review/` |
| Segredos e configs | `.codex-kit/skills/secrets-and-config-audit/` |
| Estrategia de testes | `.codex-kit/skills/testing-strategy/` |
| Performance | `.codex-kit/skills/performance-review/` |
| Release | `.codex-kit/skills/observability-and-release-readiness/` |
| Code review | `.codex-kit/skills/requesting-code-review/` |
| Receber feedback | `.codex-kit/skills/receiving-code-review/` |
| Verificacao final | `.codex-kit/skills/verification-before-completion/` |
| Worktrees | `.codex-kit/skills/using-git-worktrees/` |
| Encerrar branch | `.codex-kit/skills/finishing-a-development-branch/` |

## Estrutura

```text
.
├── AGENTS.md
├── README.md
├── bootstrap-project.sh
├── verify-kit.sh
├── .codex-kit/
│   ├── agents/
│   ├── skills/
│   ├── templates/
│   └── docs/
└── LICENSE
```

## Scripts

### Validar estrutura do kit mestre

```bash
./verify-kit.sh
```

### Replicar em outro projeto

```bash
./bootstrap-project.sh ~/scripts ~/Documents/projetos/animacao_copa
```

O bootstrap copia apenas o essencial para o projeto consumidor:

```text
AGENTS.md
.codex-kit/
```

Os scripts operacionais ficam no kit mestre.

## Segurança Minima

- Nunca commitar `.env`, tokens, chaves, certificados ou senhas.
- Usar placeholders seguros em exemplos.
- Validar inputs em fronteiras publicas.
- Separar autenticacao de autorizacao.
- Revisar logs para evitar dados sensiveis.
- Rodar `security-review` e `secrets-and-config-audit` antes de release.

## Origem

Este kit nasceu como uma adaptacao local inspirada no projeto Superpowers, mas usa nomenclatura local em `.codex-kit/skills/...`.
