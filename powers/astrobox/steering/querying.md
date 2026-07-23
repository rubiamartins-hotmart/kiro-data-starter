---
inclusion: manual
---

# Astrobox — Querying Guide

## Executar query salva

1. Use `get_query` com alias para ver metadata e parâmetros
2. Use `execute_query` com os parâmetros necessários
3. Resultado retorna link de download (CSV, JSON ou XLS)

## SQL ad-hoc

Use `execute_sql` para queries rápidas. Limitado a 10 rows.
Sempre especifique o `datasource_id` se não for o padrão (DHI_DATA_PRODUCTION).

## Analisar performance

Use `analyze_query` para obter o EXPLAIN da query.
Verifique: full table scans, joins sem índice, partições não filtradas.

## Publicar relatório

1. Gere o HTML do relatório
2. Use `publish_report` para preview
3. Use `confirm_publish_report` para publicar

O relatório fica disponível no Astrobox na pasta `mcp-astrobox` do usuário.
