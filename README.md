# 🚀 Kiro Data Starter

**Template de onboarding para a Diretoria de Dados da Hotmart.**

Ao clonar ou usar este repositório como template, todos os membros da diretoria de dados iniciam com o mesmo setup no Kiro:

- ✅ MCPs pré-configurados (Astrobox, Astrolens, Heimdall, Golden Path, Atlassian, Google Workspace)
- ✅ Steering files com padrões da diretoria (Python, SQL, arquitetura, documentação)
- ✅ Hooks de automação (AppSec, PR creation, validação de dados)
- ✅ Powers prontos para instalar (Astrobox, Golden Path, Atlassian)
- ✅ Skills recomendadas documentadas

---

## 📦 Como usar

### Opção 1 — Usar como template para novos projetos

1. Clique em **"Use this template"** no GitHub
2. Crie o novo repositório do seu projeto
3. O `.kiro/` já vem configurado — abra no Kiro e comece a trabalhar

### Opção 2 — Copiar o `.kiro/` para um projeto existente

```bash
# Clone este repo
git clone https://github.com/rubiamartins-hotmart/kiro-data-starter.git

# Copie a pasta .kiro para seu projeto
cp -r kiro-data-starter/.kiro /caminho/do/seu/projeto/
```

### Opção 3 — Usar como referência

Explore a estrutura e copie apenas o que fizer sentido para seu contexto.

---

## 📁 Estrutura

```
.kiro/
├── settings/
│   └── mcp.json                # MCPs pré-configurados
├── steering/
│   ├── python-conventions.md   # Padrões Python da Hotmart
│   ├── sql-standards.md        # Convenções SQL e Astrobox
│   ├── data-architecture.md    # Arquitetura de dados
│   ├── documentation.md        # Padrões de documentação
│   └── workflow.md             # Workflow MDSVC e boas práticas
├── hooks/
│   ├── appsec-gate.json        # Validação de segurança em writes
│   └── create-pull-request.json # Automação de PRs com Jira
└── skills/
    └── README.md               # Skills recomendadas (instalação manual)
```

---

## 🔧 MCPs incluídos

| MCP | Descrição | Requer |
|-----|-----------|--------|
| **Astrobox** | SQL, queries, reports na plataforma de dados | Token (DevTools) |
| **Astrolens** | Catálogo de dados e linhagem (DataHub) | VPN |
| **Heimdall de Dados** | Qualidade de dados, scores, findings | Auth via browser |
| **Golden Path** | Padrões de arquitetura Hotmart | VPN |
| **Atlassian** | Jira + Confluence | OAuth (1ª chamada) |
| **Google Workspace** | Gmail, Drive, Sheets, Calendar | Token automático |

---

## 🎯 Skills recomendadas

Instale via JedAI (`jedai/kiro/skills/`):

- `python-conventions` — Convenções Python Hotmart
- `python-api-patterns` — Padrões de API FastAPI
- `python-rest-auth` — Autenticação FastAPI (hot-security)
- `python-ai-gateway` — LLM via AI Gateway
- `astrobox-cli` — Queries SQL via Astrobox CLI
- `data-modeling-doc-assistant` — Documento de Projeto de Modelagem

---

## ⚡ Powers

Os Powers ficam em `powers/` e estendem o Kiro com MCPs + steering integrados:

| Power | Descrição |
|-------|-----------|
| `astrobox` | MCP Astrobox + steering de uso |
| `golden-path` | MCP Golden Path + guia de ADRs |
| `hotmart-atlassian` | MCP Atlassian otimizado para Hotmart |

Para instalar: Kiro → Painel de Powers → "Install from local directory" → selecione a pasta do power.

---

## 🔐 Pré-requisitos

1. **VPN Hotmart** ativa (para Golden Path, Astrolens, Cosmos DS)
2. **GitHub CLI** autenticado (`gh auth login`)
3. **Token Astrobox** configurado (renovar a cada 48h via DevTools)
4. **Python 3.12+** e **uv/uvx** instalados

---

## 📚 Referências

- [JedAI — Skills e Powers](https://github.com/Hotmart-Org/jedai)
- [Confluence — MCPs](https://hotmart.atlassian.net/wiki/spaces/Data/pages/2366701774)
- [Confluence — MDSVC](https://hotmart.atlassian.net/wiki/spaces/Data/pages/2359164985)
- [Data Core Business IA](https://github.com/Hotmart-Org/data-core-business-ia)

---

## 🤝 Contribuindo

1. Crie uma branch: `git checkout -b feat/minha-melhoria`
2. Faça suas alterações
3. Abra um PR descrevendo o que adicionou/alterou
4. Peça review de alguém da diretoria

---

> Mantido por: Diretoria de Dados | Última atualização: Julho 2026
