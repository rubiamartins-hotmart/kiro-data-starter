---
inclusion: fileMatch
fileMatchPattern: "**/*.py"
---

# Convenções Python — Diretoria de Dados Hotmart

## Estilo e Formatação

- Python 3.12+ obrigatório
- Formatter: `ruff format` (line-length: 120)
- Linter: `ruff check` com regras E, W, F, I, UP, N, ANN
- Type hints obrigatórios em todas as funções públicas
- Docstrings no formato Google Style

## Estrutura de Projetos

```
src/
├── adapters/       # Integrações externas (APIs, DBs)
├── core/           # Lógica de negócio e domínio
├── models/         # Modelos Pydantic / dataclasses
├── utils/          # Utilitários compartilhados
└── __init__.py
tests/
├── unit/
├── integration/
└── conftest.py
```

## Padrões de Código

- Use `Pydantic v2` para validação de dados e modelos
- Use `httpx` para requisições HTTP (async quando possível)
- Use `structlog` para logging estruturado
- Prefira composição a herança
- Funções puras quando possível
- Máximo 30 linhas por função (exceto orquestradores)

## Tratamento de Erros

- Erros de domínio: exceções custom herdando de `DomainError`
- Erros de infraestrutura: capture e re-lance com contexto
- Nunca use `except Exception` sem re-raise ou logging
- Sempre inclua `correlation_id` nos logs de erro

## Dependências

- Gerenciamento via `pyproject.toml` + `uv`
- Lock file (`uv.lock`) versionado
- Versões pinadas (sem ranges abertos)
- Preferir bibliotecas do ecossistema Hotmart quando existirem

## Testes

- Framework: `pytest`
- Coverage mínimo: 80%
- Fixtures em `conftest.py` por módulo
- Mocks apenas para dependências externas (adapters)
- Testes de integração separados dos unitários

## Segurança

- Nunca hardcode secrets — use variáveis de ambiente
- Valide inputs com Pydantic antes de processar
- Use `hot-security` para autenticação em APIs FastAPI
- Sanitize dados antes de queries SQL (parameterized queries)
