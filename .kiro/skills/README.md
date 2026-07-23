# Skills Recomendadas — Diretoria de Dados

Skills são instruções estruturadas que ensinam o Kiro a executar tarefas específicas.
Elas são instaladas a partir do repositório [JedAI](https://github.com/Hotmart-Org/jedai).

## Como instalar

1. Clone o JedAI: `git clone git@github.com:Hotmart-Org/jedai.git`
2. Copie a skill desejada para `.kiro/skills/` do seu projeto
3. Ou use o Skill Manager: `#skill-manager` no chat do Kiro

## Skills essenciais para Dados

### Python
| Skill | Caminho no JedAI | Uso |
|-------|-------------------|-----|
| python-conventions | `kiro/skills/python-conventions/` | Convenções Python Hotmart |
| python-api-patterns | `kiro/skills/python-api-patterns/` | Padrões FastAPI |
| python-rest-auth | `kiro/skills/python-rest-auth/` | Autenticação hot-security |
| python-ai-gateway | `kiro/skills/python-ai-gateway/` | Integração com LLMs |

### Dados
| Skill | Caminho no JedAI | Uso |
|-------|-------------------|-----|
| astrobox-cli | `kiro/skills/astrobox-cli/` | Queries via CLI |
| data-modeling-doc-assistant | `kiro/skills/data-modeling-doc-assistant/` | Doc de modelagem |
| workspace-graph | `kiro/skills/workspace-graph/` | Grafo de dependências |

### DevOps / Infra
| Skill | Caminho no JedAI | Uso |
|-------|-------------------|-----|
| application-logs | `kiro/skills/application-logs/` | Logs Elasticsearch |
| kibana-datahub | `kiro/skills/kibana-datahub/` | Eventos DataHub |
| newrelic-debugger | `kiro/skills/newrelic-debugger/` | Debug via NerdGraph |
| iac-resource-creator | `kiro/skills/iac-resource-creator/` | Terraform stacks |

### Utilitários
| Skill | Caminho no JedAI | Uso |
|-------|-------------------|-----|
| hotmart-toolkit | `kiro/skills/hotmart-toolkit/` | Credenciais e utils |
| apply-pr-comments | `kiro/skills/apply-pr-comments/` | Correções de review |
| hook-manager | `kiro/skills/hook-manager/` | Gerenciar hooks |

## Criando novas skills

Use a skill `skill-manager` para criar skills customizadas:

```
#skill-manager criar nova skill para [descreva o propósito]
```
