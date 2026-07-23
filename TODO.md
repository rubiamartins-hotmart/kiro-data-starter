# TODO — Pontos de Ajuste

## Problemas Encontrados no Teste

- [ ] **Nenhum MCP conectou sozinho** — Investigar por que os MCPs não iniciam automaticamente ao abrir o projeto. Possíveis causas: tokens não configurados, VPN desligada, certificados Zscaler ausentes. Definir quais MCPs podem conectar sem intervenção e quais exigem configuração manual.

---

## Ajustes no Guia de Onboarding

### Pré-requisitos (antes do Passo 1)

- [ ] Incluir informações sobre onde baixar o Kiro, incluindo links (https://kiro.dev)
- [ ] **Passo 7 → mover para antes do Passo 1**: Indicar para ligar a VPN **antes** de abrir o Kiro
- [ ] Incluir mais informações sobre o **Zscaler**: o que é, por que é necessário, como verificar se está ativo, e como o certificado impacta os MCPs (variáveis `SSL_CERT_FILE`, `NODE_EXTRA_CA_CERTS`)

### Passo 3

- [ ] Alterar atalho do terminal de `Ctrl + `` (crase)` para `Ctrl + '` (aspas simples, a tecla ao lado do 1)
- [ ] Explicar o que acontece quando termina de baixar o pacote de configurações (mensagem esperada no terminal, confirmação visual de sucesso)

### Passo 6 (Token Astrobox)

- [ ] Revisar orientações — usar linguagem de manual (passo a passo visual) e não linguagem do Kiro/agente
- [ ] Incluir screenshots ou descrições mais detalhadas de cada clique
- [ ] Considerar alternativa: script que peça o token e configure automaticamente

### Novo: Comando informativo

- [ ] Incluir no guia um comando (ou steering manual) que o usuário possa usar no chat do Kiro para ler informações sobre o pacote: o que tem, o que faz cada parte, para que serve, quando pode ser útil. Ex: digitar `#pacote-dados` no chat para ver um resumo completo.

---

## Ajustes no Pacote (.kiro/)

### MCPs

- [ ] **Incluir Astrolens** no `mcp.json` (catálogo de dados e linhagem)
- [ ] Revisar configuração dos MCPs para incluir certificados Zscaler (`SSL_CERT_FILE`, `NODE_EXTRA_CA_CERTS`, `REQUESTS_CA_BUNDLE`) — sem isso, MCPs não conectam na rede Hotmart
- [ ] Avaliar quais MCPs podem usar `disabled: true` como padrão (para não dar erro em quem não tem token ainda)

### Steering / Documentação

- [ ] Criar steering file `pacote-dados.md` com `inclusion: manual` — resumo do que tem no pacote, para que serve cada item, quando usar cada ferramenta

---

## Prioridades

1. 🔴 Corrigir conexão dos MCPs (certificados Zscaler + VPN)
2. 🔴 Incluir Astrolens no mcp.json
3. 🟡 Reordenar guia: VPN antes de tudo
4. 🟡 Criar steering informativo (`#pacote-dados`)
5. 🟢 Melhorar linguagem do Passo 6
6. 🟢 Incluir info sobre download do Kiro
