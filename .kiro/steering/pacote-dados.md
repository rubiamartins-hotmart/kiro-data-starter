---
inclusion: manual
---

# 📦 Pacote Kiro Data Starter — O que tem e para que serve

Este pacote configura automaticamente o Kiro com todas as ferramentas necessárias para trabalhar na Diretoria de Dados da Hotmart.

---

## MCPs (ferramentas conectadas)

| MCP | O que faz | Quando usar |
|-----|-----------|-------------|
| **Google Workspace** | Acessa Gmail, Drive, Sheets, Calendar, Chat | Enviar emails, criar planilhas, consultar agenda, buscar documentos |
| **Atlassian** | Acessa Jira e Confluence | Criar/consultar issues, buscar páginas de documentação, transitar tarefas |
| **Astrobox** | Executa SQL na plataforma de dados | Consultar dados, rodar queries, exportar CSV, criar relatórios |
| **Astrolens** | Acessa o catálogo de dados (DataHub) | Descobrir tabelas, ver schemas, rastrear linhagem de dados |
| **Heimdall de Dados** | Mostra qualidade dos dados | Verificar scores, encontrar problemas em datasets, ver scorecard |
| **Golden Path** | Consulta padrões de arquitetura | Saber como fazer algo "do jeito certo" na Hotmart, gerar ADRs |
| **GitHub** | Acessa repositórios de código | Criar PRs, consultar issues, ver código |
| **Okta** | Consulta identidade e acessos | Ver grupos, aplicações, logs de acesso (desabilitado por padrão) |
| **DataHub Docs** | Documentação de contratos de dados | Data Contracts, schemas Spark, validação YAML (desabilitado por padrão) |
| **AWS** | Documentação AWS | Consultar docs de S3, Lambda, etc. (desabilitado por padrão) |

---

## Steering files (regras automáticas)

| Arquivo | Quando ativa | O que faz |
|---------|--------------|-----------|
| **python-conventions** | Ao editar arquivo `.py` | Aplica padrões Python da Hotmart (ruff, type hints, Pydantic, testes) |
| **sql-standards** | Ao editar arquivo `.sql` | Aplica convenções SQL (uppercase, CTEs, naming, performance) |
| **data-architecture** | Sempre | Dá contexto sobre camadas de dados, stack e padrões de pipeline |
| **documentation** | Sempre | Define como documentar: commits, PRs, ADRs, docstrings |
| **workflow** | Sempre | Explica a metodologia MDSVC e o fluxo de trabalho da diretoria |

---

## Hooks (automações)

| Hook | Quando dispara | O que faz |
|------|----------------|-----------|
| **AppSec Gate** | Antes de qualquer escrita de arquivo | Verifica se há secrets expostos, SQL injection ou padrões inseguros |
| **Create Pull Request** | Quando você aciona manualmente | Cria PR no GitHub com título do Jira e transita a issue |
| **Validate SQL** | Ao salvar arquivo `.sql` | Verifica padrões de nomenclatura e boas práticas SQL |
| **ETL Validator** | Ao salvar pipeline/ETL Python | Valida idempotência, particionamento e tratamento de erros |

---

## Skills (habilidades extras)

Skills são instaladas separadamente do [JedAI](https://github.com/Hotmart-Org/jedai). As principais para dados:

- **astrobox-cli** — rodar queries por alias
- **data-modeling-doc-assistant** — preencher documento de modelagem
- **python-conventions** — padrões Python
- **python-api-patterns** — criar APIs FastAPI
- **hotmart-toolkit** — credenciais e utilitários gerais

---

## Quando cada ferramenta é útil

| Eu preciso... | Use |
|---------------|-----|
| Consultar dados | Astrobox (SQL) |
| Descobrir se uma tabela existe | Astrolens (catálogo) |
| Ver se os dados estão corretos | Heimdall (qualidade) |
| Criar uma issue no Jira | Atlassian |
| Enviar um email ou agendar reunião | Google Workspace |
| Saber o padrão para criar um serviço | Golden Path |
| Criar um PR | Hook "Create Pull Request" |
| Verificar acessos de alguém | Okta |

---

## Como ativar este guia no chat

Digite `#pacote-dados` no chat do Kiro para ver estas informações a qualquer momento.
