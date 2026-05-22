# Codex Kit Pro

Kit profissional para desenvolvimento assistido por Codex com foco em **produto, arquitetura, UI diferenciada, seguranca, qualidade, performance e release**.

## 30 segundos

- **O que e?** Um sistema de skills reutilizavel para criar projetos completos com agentes de IA.
- **Para quem?** Quem quer um fluxo replicavel, seguro e menos generico.
- **Como comecar?** Leia [`.instructions.md`](.instructions.md) e [AGENTS.md](AGENTS.md).
- **Como validar?** Rode `./verify-kit.sh`.

## O que mudou no Kit Pro

O kit agora cobre o ciclo completo:

1. Descoberta de produto
2. Direcao criativa para UI nao-generica
3. Arquitetura de projeto
4. API e banco de dados
5. Planejamento e execucao incremental
6. TDD e debugging sistematico
7. Seguranca, segredos e configuracao
8. Testes, performance e QA visual
9. Observabilidade, release e verificacao final

## Estrutura

```text
.
├── .instructions.md
├── AGENTS.md
├── README.md
├── bootstrap-project.sh
├── verify-kit.sh
├── .codex-kit/
│   ├── agents/
│   ├── skills/
│   │   ├── product-discovery/
│   │   ├── brainstorming/
│   │   ├── creative-direction/
│   │   ├── interface-craft/
│   │   ├── visual-quality-review/
│   │   ├── full-project-architecture/
│   │   ├── api-design/
│   │   ├── database-design/
│   │   ├── writing-plans/
│   │   ├── executing-plans/
│   │   ├── subagent-driven-development/
│   │   ├── test-driven-development/
│   │   ├── systematic-debugging/
│   │   ├── security-threat-modeling/
│   │   ├── security-review/
│   │   ├── secrets-and-config-audit/
│   │   ├── testing-strategy/
│   │   ├── performance-review/
│   │   ├── observability-and-release-readiness/
│   │   ├── requesting-code-review/
│   │   ├── receiving-code-review/
│   │   ├── verification-before-completion/
│   │   ├── using-git-worktrees/
│   │   └── finishing-a-development-branch/
│   ├── templates/
│   └── docs/
└── LICENSE
```

## Fluxo recomendado

```text
Product Discovery
  ↓
Creative Direction / Brainstorming
  ↓
Full Project Architecture
  ↓
API Design / Database Design
  ↓
Writing Plans
  ↓
TDD + Execution
  ↓
Security + Tests + Performance + Visual QA
  ↓
Code Review
  ↓
Verification Before Completion
  ↓
Release Readiness
```

## Skills principais

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
| TDD | `.codex-kit/skills/test-driven-development/` |
| Debug dificil | `.codex-kit/skills/systematic-debugging/` |
| Threat modeling | `.codex-kit/skills/security-threat-modeling/` |
| Revisao de seguranca | `.codex-kit/skills/security-review/` |
| Segredos e configs | `.codex-kit/skills/secrets-and-config-audit/` |
| Estrategia de testes | `.codex-kit/skills/testing-strategy/` |
| Performance | `.codex-kit/skills/performance-review/` |
| Release | `.codex-kit/skills/observability-and-release-readiness/` |

## Gates obrigatorios

1. Nao implementar sem design aprovado.
2. Nao iniciar sem plano executavel por tarefas atomicas.
3. Nao concluir sem validacao tecnica registrada.
4. Nao concluir sem code review.
5. Nao marcar "done" sem verificacao final.

## Scripts

### Validar estrutura

```bash
./verify-kit.sh
```

### Replicar em outro projeto

```bash
./bootstrap-project.sh /caminho/para/este-kit /caminho/para/projeto
```

O bootstrap copia apenas o essencial para o projeto consumidor: `AGENTS.md` e `.codex-kit/{agents,skills,templates,docs}`. Os scripts operacionais ficam no kit mestre.

## Segurança minima

- Nunca commitar `.env`, tokens, chaves, certificados ou senhas.
- Usar placeholders seguros em exemplos.
- Validar inputs em fronteiras publicas.
- Separar autenticacao de autorizacao.
- Revisar logs para evitar dados sensiveis.
- Rodar `security-review` e `secrets-and-config-audit` antes de release.

## Origem

Este kit nasceu como uma adaptacao local inspirada no projeto Superpowers, mas usa nomenclatura local em `.codex-kit/skills/...`.
