# 🚀 Kiro Data Starter

**Template de onboarding para a Diretoria de Dados da Hotmart.**

Ao clonar ou usar este repositório como template, todos os membros da diretoria de dados iniciam com o mesmo setup no Kiro:

- ✅ MCPs pré-configurados (Google Workspace, Atlassian, Astrobox, Astrolens, Heimdall, Okta, DataHub Docs, GitHub, AWS)
- ✅ Steering files com padrões da diretoria (Python, SQL, arquitetura, documentação)
- ✅ Hooks de automação (AppSec, PR creation, validação SQL, ETL Validator)
- ✅ Power Astrobox pronto para instalar
- ✅ Skills recomendadas documentadas (Dados, Python, Backend, Frontend, Ferramentas)

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
│   ├── python-conventions.md   # Padrões Python (ativa ao editar *.py)
│   ├── sql-standards.md        # Convenções SQL (ativa ao editar *.sql)
│   ├── data-architecture.md    # Arquitetura de dados
│   ├── documentation.md        # Padrões de documentação
│   └── workflow.md             # Workflow MDSVC e boas práticas
├── hooks/
│   ├── appsec-gate.json        # Validação de segurança em writes
│   ├── create-pull-request.json # Automação de PRs com Jira
│   ├── validate-sql.json       # Validação ao salvar SQL
│   └── etl-validator.json      # Validação de pipelines ETL
└── skills/
    └── README.md               # Skills recomendadas (instalação via JedAI)
```

---

## 🔧 MCPs incluídos

| MCP | Descrição | Requer | Status |
|-----|-----------|--------|--------|
| **Google Workspace** | Gmail, Drive, Sheets, Calendar, Chat | OAuth + Zscaler | Ativo |
| **Atlassian** | Jira + Confluence | OAuth (1ª chamada) | Ativo |
| **Astrobox** | SQL, queries, reports na plataforma de dados | Token SSO + VPN | Ativo |
| **Astrolens** | Catálogo de dados e linhagem (DataHub) | VPN | Ativo |
| **Heimdall de Dados** | Qualidade de dados, scores, findings | VPN + Zscaler | Ativo |
| **GitHub** | Repos, PRs, issues | Token pessoal | Ativo |
| **Okta** | Identidade e acesso (grupos, apps, logs) | Token API | Desabilitado* |
| **DataHub Docs** | Data Contracts, schemas, validação YAML | VPN | Desabilitado* |
| **AWS** | Documentação AWS (S3, Lambda, etc.) | — | Desabilitado* |

> *Desabilitados por padrão. Habilite conforme necessidade alterando `"disabled": false` no `mcp.json`.

---

## 🎯 Skills recomendadas

Instale via [JedAI](https://github.com/Hotmart-Org/jedai) (`jedai/kiro/skills/`):

| Categoria | Skills |
|-----------|--------|
| **Dados** | astrobox-cli, data-modeling-doc-assistant, workspace-graph |
| **Python** | python-conventions, python-api-patterns, python-rest-auth, python-ai-gateway |
| **Backend/Java** | java-project-manager, spring-boot-update, communication-broker, right-sizing-java |
| **Frontend** | react-best-practices, next-best-practices, cosmos-ds, create-hotmart-microfront |
| **Ferramentas** | hotmart-toolkit, apply-pr-comments, skill-manager, hook-manager |

Veja a lista completa em `.kiro/skills/README.md`.

---

## ⚡ Hooks incluídos

| Hook | Evento | O que faz |
|------|--------|-----------|
| AppSec Gate | preToolUse (write) | Verifica secrets, SQL injection e padrões inseguros antes de escrever |
| Create Pull Request | userTriggered | Cria PR com título do branch/Jira, preenche template, transita issue |
| Validate SQL | fileEdited (*.sql) | Valida padrões SQL ao salvar |
| ETL Validator | fileEdited (etl/pipelines) | Valida idempotência, particionamento e retry em pipelines |

---

## 🔐 Pré-requisitos

1. **VPN Hotmart** ativa (para Astrobox, Astrolens, Heimdall, DataHub)
2. **Zscaler** ativo (certificado em `~/.certs/zscaler-ca-bundle.pem`)
3. **GitHub CLI** autenticado (`gh auth login`)
4. **Python 3.12+** e **uv/uvx** instalados
5. **Node.js** instalado (para MCPs via npx)
6. **Token Astrobox** (renovar a cada 48h via DevTools)

---

## 🔑 Variáveis de ambiente no mcp.json

Antes de usar, substitua os placeholders no `.kiro/settings/mcp.json`:

| Variável | Onde obter |
|----------|-----------|
| `${PYTHON_PATH}` | Caminho do Python 3.12 (`where python`) |
| `${ZSCALER_CERT_PATH}` | `~/.certs/zscaler-ca-bundle.pem` |
| `${GOOGLE_OAUTH_CLIENT_SECRET}` | Compartilhado pelo time (Google Console) |
| `${MCP_ASTROBOX_TOKEN}` | DevTools no Astrobox (header Authorization) |
| `${GITHUB_TOKEN}` | `gh auth token` ou GitHub Settings → Tokens |
| `${OKTA_ORG_URL}` | URL da org Okta (se necessário) |
| `${OKTA_API_TOKEN}` | Token API Okta (se necessário) |

---

## 📚 Referências

- [JedAI — Repositório Central de Skills](https://github.com/Hotmart-Org/jedai)
- [Confluence — MCPs](https://hotmart.atlassian.net/wiki/spaces/Data/pages/2366701774)
- [Confluence — MDSVC](https://hotmart.atlassian.net/wiki/spaces/Data/pages/2359164985)
- [Kiro IDE](https://kiro.dev)

---

## 🤝 Contribuindo

1. Crie uma branch: `git checkout -b feat/minha-melhoria`
2. Faça suas alterações
3. Abra um PR descrevendo o que adicionou/alterou
4. Peça review de alguém da diretoria

---

> Mantido por: Diretoria de Dados | Última atualização: Julho 2026
