# Skills Recomendadas — Diretoria de Dados

Skills são instruções estruturadas que ensinam o Kiro a executar tarefas específicas.
Elas são instaladas a partir do repositório [JedAI](https://github.com/Hotmart-Org/jedai).

## Como instalar

1. Clone o JedAI: `git clone git@github.com:Hotmart-Org/jedai.git`
2. Copie a skill desejada para `.kiro/skills/` do seu projeto
3. Ou use o Skill Manager: `#skill-manager` no chat do Kiro

---

## Dados

| Skill | Descrição | Quando usar |
|-------|-----------|-------------|
| astrobox-cli | Queries SQL via Astrobox CLI | Executar queries por alias |
| data-modeling-doc-assistant | Documento de Projeto de Modelagem | Preencher doc de modelagem |
| workspace-graph | Grafo de dependências multi-linguagem | Entender dependências |

## Python

| Skill | Descrição | Quando usar |
|-------|-----------|-------------|
| python-conventions | Convenções Python Hotmart | Escrever código Python |
| python-api-patterns | Padrões de API Python | Criar APIs FastAPI |
| python-rest-auth | Autenticação FastAPI (hot-security) | Proteger endpoints |
| python-ai-gateway | LLM via AI Gateway (LiteLLM/Strands) | Integrar com modelos de IA |

## Backend / Java

| Skill | Descrição | Quando usar |
|-------|-----------|-------------|
| java-project-manager | Build, run, testes e validações | Gerenciar projetos Java |
| spring-boot-update | Migração Spring Boot 2.x→3.x, 3.x→4.x | Atualizar versão do Spring |
| apply-hotmart-dependency-management | Migração para o Hotmart BOM | Centralizar versões |
| communication-broker | Email/SMS/WhatsApp via Broker V2 (Java) | Enviar comunicações |
| migrate-communication-broker | Migração Broker V1→V2 | Atualizar integrações |
| right-sizing-java | Otimização de recursos K8s | Dimensionar CPU/memory |
| hotmart-http-client | Requisições HTTP + logs K8s | Investigar chamadas entre serviços |
| hot-foundation-documents | Validação CNPJ/CPF (Java) | Validar documentos brasileiros |

## Frontend / React / Next.js

| Skill | Descrição | Quando usar |
|-------|-----------|-------------|
| react-best-practices | Performance React/Next.js | Otimizar renders, bundles |
| next-best-practices | Arquitetura, data fetching, SEO | Projetos Next.js |
| react-feature-sliced-design | Feature-Sliced Design adaptado | Estruturar features |
| cosmos-ds | Cosmos Design System | Componentes, tokens, acessibilidade |
| migrate-cosmos-components | Web components → Cosmos DS React | Migrar componentes legados |
| migrate-cosmos-global | CSS Cosmos → Cosmos Global/Tailwind | Migrar classes CSS |
| migrate-cosmos-orchestrator | Orquestrador de migração completa | Planejar migração |
| create-hotmart-microfront | Criar microfront do zero | Setup S3, CloudFront, CI/CD |
| bundle-size-check | Rastreamento de bundle size | Configurar checks de tamanho |
| web-vitals-optimization | LCP, INP, CLS | Melhorar Web Vitals |
| translate-action | Tradução automática i18n | Configurar GitHub Actions |
| figma-to-i18n | Extrair labels do Figma | Gerar chaves de tradução |
| monorepo | Governança Monorepo Nx | Criar/manter monorepos |
| dependabot-vulnerability-resolver | Fix de alertas Dependabot | Resolver vulnerabilidades |
| hot-foundation-documents-js | Validação CNPJ/CPF (JS) | Documentos brasileiros |
| communication-broker-nodejs | Email/SMS/WhatsApp (Node.js) | Comunicações em TypeScript |

## Ferramentas / Utilitários

| Skill | Descrição | Quando usar |
|-------|-----------|-------------|
| hotmart-toolkit | Credenciais, validações, utilitários | Tasks genéricas Hotmart |
| hotmart-ia-manager | Guardian do hotmart-ia.md | Configuração de projetos |
| apply-pr-comments | Aplica correções de review de PR | Após receber review |
| atlassian-cli | Referência de comandos acli jira | Operações Jira via terminal |
| skill-manager | Criar/validar Agent Skills | Desenvolver novas skills |
| hook-manager | Criar/instalar/remover hooks | Gerenciar automações |
| github-markdown-visual | Markdown visual rico para GitHub | Criar páginas apresentáveis |
| thumbor-url-generator | URLs assinadas Thumbor | Manipulação de imagens |
| hotmart-developers-skill | Hotmart Developers API | Expor/documentar endpoints |

---

## Repositório central

- [JedAI](https://github.com/Hotmart-Org/jedai) — Skills, Powers, Agents, Plugins (58 skills)
