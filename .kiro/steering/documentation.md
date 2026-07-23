# Padrões de Documentação — Diretoria de Dados

## Idioma

- Código: inglês (variáveis, funções, classes, comentários inline)
- Documentação de negócio: português
- PRs e commits: português
- ADRs: inglês

## Commits

Formato Conventional Commits:

```
<tipo>(<escopo>): <descrição curta>

<corpo opcional>

<footer opcional: refs Jira>
```

Tipos: `feat`, `fix`, `refactor`, `docs`, `test`, `ci`, `chore`

Exemplo:
```
feat(pipeline): adiciona ingestão de dados Creator Discovery

Implementa ETL para consumir API Creator Discovery e 
persistir no schema curated_lead_flow.

Refs: DCPLF-123
```

## Pull Requests

- Título conciso (< 70 caracteres)
- Descrição com: resumo, o que foi testado, riscos
- Sempre vincular issue Jira
- Screenshots para mudanças visuais

## ADRs (Architecture Decision Records)

- Usar template Golden Path
- Localização: `docs/architecture/decisions/`
- Naming: `NNNN-titulo-da-decisao.md`
- Status: Proposed → Accepted → Deprecated/Superseded

## Docstrings (Python)

```python
def process_leads(leads: list[Lead], config: ProcessConfig) -> ProcessResult:
    """Processa lista de leads aplicando regras de qualificação.

    Args:
        leads: Lista de leads a serem processados.
        config: Configuração de processamento (thresholds, rules).

    Returns:
        Resultado com leads qualificados e métricas de processamento.

    Raises:
        ValidationError: Se algum lead tiver dados inválidos.
        IntegrationError: Se a API externa estiver indisponível.
    """
```

## README de Projeto

Todo repositório deve ter:
1. O que é / propósito
2. Como rodar localmente
3. Como testar
4. Como fazer deploy
5. Arquitetura (diagrama ou link)
6. Contato do time responsável
