# Workflow de Desenvolvimento — MDSVC

## Sobre o MDSVC

O MDSVC (Metodologia de Desenvolvimento de Software Vibe Coding) é o framework de desenvolvimento utilizado pela diretoria de dados da Hotmart. Combina Kiro Specs, DDD e desenvolvimento assistido por IA.

## Ciclo de Vida de uma Feature

1. **DISCOVER** — Entender o problema (Confluence, stakeholders)
2. **DESIGN** — Modelar a solução (DDD, specs, ADRs)
3. **DEVELOP** — Implementar com TDD (Red → Green → Refactor)
4. **DELIVER** — Deploy, validação, monitoramento

## Uso de Kiro Specs

Para features com complexidade média ou alta:

1. Criar spec: Requirements → Design → Tasks
2. Iterar nos requisitos com stakeholders
3. Detalhar design técnico (interfaces, contratos)
4. Gerar tasks incrementais
5. Implementar task a task com Autopilot

## Fluxo Git

- Branch naming: `feat/JIRA-123-descricao-curta`
- Commits atômicos (uma mudança lógica por commit)
- Rebase antes de merge (histórico linear)
- Squash em PRs com muitos commits intermediários

## Integração com Jira

- Todo PR deve referenciar uma issue Jira
- Transições automáticas via hook: PR criado → "Code Reviewing"
- Merge → "Done" (via automação Jira)

## Qualidade

- Cobertura mínima: 80%
- Lint obrigatório: `ruff check` sem warnings
- Type checking: `mypy --strict` para módulos core
- Security scan: AppSec gate em todo write

## Observabilidade

- Logs estruturados com `structlog`
- Métricas de pipeline no NewRelic/Datadog
- Alertas configurados para SLA breach
- Dashboards por domínio de dados
