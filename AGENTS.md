# AGENTS.md - Codex Kit Pro

Sistema operacional profissional para criar projetos completos com Codex: produto, arquitetura, UI, seguranca, testes, performance, release e manutencao.

## Estrutura oficial

- `AGENTS.md` fica na raiz.
- Todo o kit fica em `.codex-kit/`:
  - `.codex-kit/agents/`
  - `.codex-kit/skills/`
  - `.codex-kit/templates/`
  - `.codex-kit/docs/`

## Gates obrigatorios

1. Nao implementar sem design aprovado.
2. Nao iniciar sem plano executavel por tarefas atomicas.
3. Nao concluir sem validacao tecnica registrada.
4. Nao concluir sem code review.
5. Nao marcar "done" sem verificacao final.

## Regra de saida de codigo

Quando pedir implementacao direta, use:

`Only output code. Do not add comments or explanations.`

Use explicacoes apenas quando forem pedidas explicitamente ou quando houver risco tecnico que precise ser registrado.

## Fluxo mestre recomendado

1. Produto e escopo
2. Direcao criativa, quando houver interface
3. Arquitetura completa
4. Design de API e banco, quando aplicavel
5. Plano executavel
6. Implementacao incremental com TDD
7. Debug sistematico, quando houver falha
8. Revisoes de seguranca, performance, visual e qualidade
9. Verificacao final
10. Encerramento de branch

## Roteador de skills

### 1) Ideia vaga, produto novo ou escopo confuso
- Use: `.codex-kit/skills/product-discovery/`
- Resultado: problema, publico, proposta de valor, MVP, nao-escopo e criterios de sucesso.

### 2) Feature, comportamento ou solucao ainda sem design aprovado
- Use: `.codex-kit/skills/brainstorming/`
- Resultado: design aprovado antes de qualquer implementacao.

### 3) Projeto completo, stack, modulos e fronteiras tecnicas
- Use: `.codex-kit/skills/full-project-architecture/`
- Resultado: arquitetura, responsabilidades, fluxos, riscos, decisoes e estrategia de evolucao.

### 4) API, integracoes, contratos ou backend publico
- Use: `.codex-kit/skills/api-design/`
- Resultado: endpoints, schemas, erros, auth, validacao, idempotencia e versionamento.

### 5) Banco de dados, persistencia ou modelo de dominio
- Use: `.codex-kit/skills/database-design/`
- Resultado: entidades, relacoes, indices, migracoes, integridade e dados sensiveis.

### 6) UI/UX que precisa parecer viva, especifica e nao-generica
- Use: `.codex-kit/skills/creative-direction/`
- Depois use: `.codex-kit/skills/interface-craft/`
- Resultado: direcao visual forte, sistema de interface, componentes, estados, assets e interacoes.

### 7) Design aprovado e precisa executar com qualidade
- Use: `.codex-kit/skills/writing-plans/`
- Resultado: plano com tarefas de 5-15 min, arquivos-alvo e validacao por tarefa.

### 8) Execucao normal com checkpoints
- Use: `.codex-kit/skills/executing-plans/`
- Resultado: implementacao incremental, uma tarefa por vez.

### 9) Execucao com subagentes/revisao em cadeia
- Use: `.codex-kit/skills/subagent-driven-development/`
- Resultado: implementacao com revisao de conformidade e qualidade por tarefa.

### 10) Logica critica, bugfix ou risco de regressao
- Use: `.codex-kit/skills/test-driven-development/`
- Resultado: ciclo RED-GREEN-REFACTOR.

### 11) Bug dificil, falha de teste ou comportamento inconsistente
- Use: `.codex-kit/skills/systematic-debugging/`
- Resultado: causa raiz identificada, hipotese testada e correcao validada.

### 12) Planejamento de seguranca antes da implementacao
- Use: `.codex-kit/skills/security-threat-modeling/`
- Resultado: ativos, atores, superficie de ataque, abusos provaveis e mitigacoes.

### 13) Revisao pratica de seguranca antes de fechar
- Use: `.codex-kit/skills/security-review/`
- Resultado: findings por severidade sobre auth, inputs, permissoes, dados, logs e deploy.

### 14) Segredos, configs, tokens, ambientes e logs sensiveis
- Use: `.codex-kit/skills/secrets-and-config-audit/`
- Resultado: auditoria de `.env`, chaves, tokens, permissoes, exemplos e vazamentos.

### 15) Estrategia de testes para produto completo
- Use: `.codex-kit/skills/testing-strategy/`
- Resultado: matriz unit/integration/e2e/smoke/regressao, comandos e gaps.

### 16) Performance, bundle, queries, cache ou latencia
- Use: `.codex-kit/skills/performance-review/`
- Resultado: gargalos provaveis, medicoes, melhorias priorizadas e limites aceitaveis.

### 17) QA visual e polimento de interface
- Use: `.codex-kit/skills/visual-quality-review/`
- Resultado: revisao de screenshots, responsividade, contraste, estados, espacamento e anti-generico.

### 18) Logs, erros, deploy, operacao e prontidao para producao
- Use: `.codex-kit/skills/observability-and-release-readiness/`
- Resultado: checklist de release, observabilidade, rollback, configuracao e riscos residuais.

### 19) Antes de fechar qualquer tarefa importante
- Use: `.codex-kit/skills/requesting-code-review/`
- Apoio: `.codex-kit/agents/code-reviewer.md`
- Resultado: findings por severidade e correcoes rastreaveis.

### 20) Recebeu feedback e precisa responder com maturidade
- Use: `.codex-kit/skills/receiving-code-review/`
- Resultado: feedback entendido, verificado, implementado ou contestado tecnicamente.

### 21) Finalizacao e evidencia de conclusao
- Use: `.codex-kit/skills/verification-before-completion/`
- Resultado: checklist objetivo e evidencias executaveis.

### 22) Organizacao de branches paralelas
- Use: `.codex-kit/skills/using-git-worktrees/`
- Resultado: isolamento seguro entre frentes.

### 23) Encerramento de branch
- Use: `.codex-kit/skills/finishing-a-development-branch/`
- Resultado: decisao de merge, PR, manter ou descartar com validacao final.

## Segurança minima obrigatoria

- Nunca commitar segredos (`.env`, chaves, tokens).
- Sempre revisar scripts antes de `chmod +x` e execucao.
- Validar inputs em fronteiras publicas.
- Tratar autorizacao separada de autenticacao.
- Nao registrar tokens, senhas, documentos privados ou dados pessoais em logs.
- Em duvida entre velocidade e seguranca, escolher seguranca.

## Padrao de qualidade esperado

- Toda mudanca importante tem design, plano, testes, review e verificacao.
- Toda UI importante passa por direcao criativa e QA visual.
- Todo projeto com usuarios reais passa por threat modeling, security review e release readiness.
- Toda afirmacao de conclusao precisa de evidencia recente.
