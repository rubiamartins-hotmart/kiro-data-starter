---
inclusion: fileMatch
fileMatchPattern: "**/*.sql"
---

# Convenções SQL — Diretoria de Dados Hotmart

## Estilo Geral

- Keywords SQL em UPPERCASE: `SELECT`, `FROM`, `WHERE`, `JOIN`, `GROUP BY`
- Nomes de tabelas e colunas em snake_case
- Aliases de tabela curtos e descritivos (ex: `o` para orders, `u` para users)
- Uma cláusula por linha para queries com mais de 3 colunas
- Indentação de 2 espaços

## Nomenclatura

- Tabelas: `schema.nome_da_tabela` (sempre com schema)
- Colunas: `snake_case` descritivo
- CTEs: nome que descreve o que contêm (ex: `active_users`, `daily_revenue`)
- Evite abreviações obscuras

## Estrutura de Queries

```sql
WITH cte_nome AS (
  SELECT
    coluna1,
    coluna2
  FROM schema.tabela
  WHERE condicao = 'valor'
)
SELECT
  c.coluna1,
  c.coluna2,
  COUNT(*) AS total
FROM cte_nome c
JOIN schema.outra_tabela o
  ON c.id = o.referencia_id
WHERE c.status = 'ACTIVE'
GROUP BY 1, 2
ORDER BY total DESC
LIMIT 100
```

## Boas Práticas

- Sempre use CTEs ao invés de subqueries aninhadas (legibilidade)
- Evite `SELECT *` — liste colunas explicitamente
- Use `COALESCE` ao invés de `IFNULL`/`NVL`
- Prefira `LEFT JOIN` explícito ao invés de filtros no `WHERE` para outer joins
- Sempre inclua `LIMIT` em queries exploratórias
- Use window functions quando aplicável (evite self-joins)

## Astrobox

- Queries salvas devem ter `alias` descritivo (snake_case)
- Inclua `description` explicando o propósito da query
- Use parâmetros (`$1`, `$2`) para queries parametrizadas
- Cache policy: `T_NONE` para dados em tempo real, `T_1HOUR` para relatórios

## Performance

- Filtre por partição quando a tabela for particionada (date columns)
- Evite `DISTINCT` quando `GROUP BY` resolve o problema
- Use `EXISTS` ao invés de `IN` para subqueries grandes
- Monitore o EXPLAIN antes de queries em tabelas com >1M rows

## Qualidade de Dados

- Valide nullability esperada nas colunas
- Use assertions para dados críticos (Heimdall de Dados)
- Documente transformações complexas com comentários inline
- Mantenha linhagem rastreável (Astrolens/DataHub)
