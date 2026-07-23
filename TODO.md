# TODO — Pontos de Ajuste

## Problemas Encontrados no Teste

- [x] **Nenhum MCP conectou sozinho** — Resolvido: certificados Zscaler adicionados em todos os MCPs (`SSL_CERT_FILE`, `NODE_EXTRA_CA_CERTS`, `REQUESTS_CA_BUNDLE`). MCPs que exigem token manual (Astrobox, Okta) documentados no guia de onboarding.

---

## Ajustes no Guia de Onboarding

### Pré-requisitos (antes do Passo 1)

- [x] Incluir informações sobre onde baixar o Kiro, incluindo links (https://kiro.dev)
- [x] **Passo 7 → mover para antes do Passo 1**: VPN agora é pré-requisito antes de abrir o Kiro
- [x] Incluir mais informações sobre o **Zscaler**: explicado o que é, como verificar, onde fica o certificado

### Passo 3

- [x] Alterar atalho do terminal para `Ctrl + '` (aspas simples)
- [x] Explicar o que acontece quando termina de baixar (mensagem esperada, confirmação de sucesso)

### Passo 6 (Token Astrobox)

- [x] Revisar orientações — linguagem de manual passo a passo com numeração detalhada
- [x] Descrições mais detalhadas de cada clique (6.1 e 6.2 separados)
- [ ] Incluir screenshots (pendente — requer capturas de tela)
- [ ] Considerar script de configuração automática (melhoria futura)

### Comando informativo

- [x] Criado steering manual `pacote-dados.md` — ativado via `#pacote-dados` no chat

---

## Ajustes no Pacote (.kiro/)

### MCPs

- [x] **Incluir Astrolens** no `mcp.json`
- [x] Certificados Zscaler incluídos em todos os MCPs
- [x] MCPs opcionais (Okta, DataHub Docs, AWS) com `disabled: true` por padrão
- [x] **Golden Path reincluído** (usado pelo steering data-architecture.md)

### Steering / Documentação

- [x] Criado `pacote-dados.md` com `inclusion: manual`

---

## Pendentes (melhorias futuras)

- [ ] Screenshots no guia de onboarding (Passo 6)
- [ ] Script de setup que preenche variáveis automaticamente (pedir token, detectar paths)
- [ ] Testar onboarding completo com outro membro da diretoria
- [ ] Avaliar se Atlassian conecta via OAuth sem configuração manual
