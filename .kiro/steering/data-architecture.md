# Arquitetura de Dados — Diretoria de Dados Hotmart

## Princípios

- **Data Mesh**: domínios são responsáveis por seus dados como produto
- **Data Contracts**: contratos formais entre produtores e consumidores
- **Observabilidade**: toda pipeline deve ter monitoramento e alertas
- **Imutabilidade**: dados brutos nunca são alterados — transformações criam novas camadas

## Camadas de Dados

| Camada | Descrição | Exemplo de Schema |
|--------|-----------|-------------------|
| **Raw** | Dados brutos ingeridos sem transformação | `raw_*` |
| **Staged** | Dados limpos, tipados e deduplicados | `staged_*` |
| **Curated** | Modelos de negócio prontos para consumo | `curated_*` |
| **Analytics** | Agregações e métricas para BI | `analytics_*` |

## Stack Tecnológica

- **Orquestração**: Airflow
- **Processamento**: Spark (PySpark)
- **Storage**: S3 + Delta Lake / Iceberg
- **Catálogo**: DataHub (Astrolens)
- **Qualidade**: Heimdall de Dados
- **Queries ad-hoc**: Astrobox (Trino/Presto)
- **BI**: Looker / Metabase

## Padrões de Pipeline

- Toda pipeline deve ter: retry policy, alertas, SLA definido
- Use idempotência (reprocessamento seguro)
- Particionamento por data obrigatório para tabelas > 1GB
- Metadata (created_at, updated_at, source_system) em todas as tabelas curated

## Ferramentas no Kiro

- **Astrobox MCP**: executar queries, salvar no repositório, exportar resultados
- **Astrolens MCP**: explorar catálogo, verificar linhagem, descobrir datasets
- **Heimdall de Dados MCP**: verificar scores de qualidade, listar findings
- **Golden Path MCP**: consultar padrões de arquitetura e gerar ADRs

## Referências Internas

- Golden Path: https://golden-path.hotmart.com
- DataHub: https://datahub.hotmart.com
- Astrobox: https://astrobox.hotmart.com
- Heimdall: https://heimdall-dados.hotmart.com
