# 🚀 Guia de Onboarding — Diretoria de Dados

Bem-vinda à Diretoria de Dados! Este guia vai te levar do zero até ter seu ambiente de trabalho configurado no Kiro.

Não se preocupe se você não é técnica. Vamos passo a passo.

---

## Antes de começar — Pré-requisitos

### 1. Ligue a VPN da Hotmart

Antes de qualquer coisa, a VPN precisa estar ativa. Sem ela, as ferramentas de dados (Astrobox, Astrolens, Heimdall, Golden Path) não funcionam.

- Procure o ícone da VPN na barra de tarefas (canto inferior direito)
- Clique e conecte
- Se não souber como, peça ajuda ao time de TI

### 2. Verifique o Zscaler

O Zscaler é o sistema de segurança de rede da Hotmart. Ele intercepta conexões HTTPS e precisa de um certificado especial para que as ferramentas do Kiro funcionem.

**Como verificar:**
- Procure o ícone do Zscaler na barra de tarefas (um "Z" azul)
- Ele deve mostrar status "Conectado" ou "On"
- O certificado deve estar em: `C:\Users\SEU_USUARIO\.certs\zscaler-ca-bundle.pem`

Se o arquivo não existir, peça ao time de TI para instalar o certificado Zscaler.

### 3. Baixe o Kiro (se ainda não tiver)

- Acesse: **https://kiro.dev**
- Clique em **Download**
- Instale normalmente (próximo, próximo, concluir)

---

## Passo 1 — Abrir o Kiro

Procure pelo ícone **Kiro** na área de trabalho ou no menu iniciar e abra-o.

Você verá uma tela parecida com um editor de código. É normal.

---

## Passo 2 — Abrir o Terminal

Dentro do Kiro, pressione:

```
Ctrl + ' (aspas simples, a tecla ao lado do 1)
```

Vai abrir um painel na parte de baixo da tela chamado **Terminal**.

---

## Passo 3 — Baixar o pacote de configurações

No terminal, copie e cole o comando abaixo e pressione **Enter**:

```
git clone https://github.com/rubiamartins-hotmart/kiro-data-starter.git
```

**O que vai acontecer:**
- Você verá mensagens como "Cloning into 'kiro-data-starter'...", "Receiving objects: 100%", "done."
- Quando aparecer uma nova linha com `PS C:\...>` esperando seu comando, significa que terminou com sucesso
- Se aparecer algum erro em vermelho, peça ajuda

---

## Passo 4 — Abrir o projeto

1. No Kiro, vá em **File** → **Open Folder** (ou `Ctrl+K Ctrl+O`)
2. Navegue até a pasta onde o terminal baixou o repositório:
   - Normalmente fica em: `C:\Users\SEU_USUARIO\kiro-data-starter`
3. Selecione a pasta `kiro-data-starter` e clique em **Selecionar pasta**

---

## Passo 5 — O que já está configurado automaticamente

Ao abrir a pasta, o Kiro carrega automaticamente:

| O que | Para que serve |
|-------|----------------|
| **MCPs** (ferramentas) | Conexão com Astrobox, Astrolens, Heimdall, Atlassian, Google, GitHub, Golden Path |
| **Steering** (regras) | Padrões de Python, SQL, documentação e workflow da diretoria |
| **Hooks** (automações) | Validação de segurança, criação de PRs, verificação de SQL e ETL |

---

## Passo 6 — Configurar o token do Astrobox

Para que o Kiro consiga executar queries SQL no Astrobox, você precisa colocar seu token pessoal. Siga o procedimento abaixo:

### 6.1 — Obter o token

1. Abra o navegador (Chrome ou Edge)
2. Acesse: **https://astrobox.hotmart.com**
3. Faça login com seu email `@hotmart.com`
4. Após logar, pressione a tecla **F12** no teclado
   - Vai abrir um painel lateral chamado "DevTools" (ferramentas de desenvolvedor)
5. No painel que abriu, clique na aba **Network** (ou **Rede**)
6. Agora clique em qualquer coisa na página do Astrobox (para gerar tráfego)
7. Na lista que apareceu no painel Network, clique em qualquer item
8. No lado direito, procure a seção **Request Headers**
9. Encontre a linha que começa com **Authorization**
10. Copie o valor inteiro dessa linha (começa com `Bearer eyJ...` e é bem longo)

### 6.2 — Colar o token no Kiro

1. No Kiro, abra o arquivo: `.kiro/settings/mcp.json`
   - Use `Ctrl+P`, digite `mcp.json` e pressione Enter
2. Encontre a linha que diz `"Bearer ${MCP_ASTROBOX_TOKEN}"`
3. Substitua `${MCP_ASTROBOX_TOKEN}` pelo valor que copiou
   - O resultado deve ficar: `"Bearer eyJhbGci..."`
4. Salve o arquivo: **Ctrl+S**

> ⚠️ Esse token expira a cada ~48 horas. Quando o Astrobox parar de funcionar, repita os passos acima para renovar.

---

## Passo 7 — Configurar variáveis do ambiente

No mesmo arquivo `.kiro/settings/mcp.json`, substitua os outros placeholders:

| Placeholder | Substitua por | Como encontrar |
|-------------|---------------|----------------|
| `${PYTHON_PATH}` | Caminho do Python | No terminal, digite: `where python` |
| `${ZSCALER_CERT_PATH}` | `C:\Users\SEU_USUARIO\.certs\zscaler-ca-bundle.pem` | Troque SEU_USUARIO pelo seu login |
| `${GITHUB_TOKEN}` | Token do GitHub | No terminal, digite: `gh auth token` |
| `${GOOGLE_OAUTH_CLIENT_SECRET}` | Pergunte ao time | Compartilhado internamente |

Salve o arquivo após todas as substituições.

---

## Passo 8 — Testar

No chat do Kiro (painel à direita), digite:

```
Olá! Me diga quais MCPs estão conectados.
```

Se os MCPs aparecerem listados, tudo funcionou!

---

## 💡 Dicas

- **Para saber o que o pacote oferece**: digite `#pacote-dados` no chat do Kiro
- **Se algo não conectar**: verifique VPN + Zscaler ativos
- **Token expirou**: repita o Passo 6
- **Dúvidas**: pergunte diretamente ao Kiro no chat — ele conhece as ferramentas

---

## 🆘 Problemas comuns

| Problema | Solução |
|----------|---------|
| MCPs não conectam | Verifique VPN e Zscaler. Reinicie o Kiro. |
| "Token SSO não encontrado" | Renove o token (Passo 6) |
| "git clone" deu erro | Verifique se tem Git instalado. Peça ajuda ao TI. |
| Astrolens não funciona | Só funciona com VPN ativa |
| Terminal não abriu | Tente menu: View → Terminal |

---

> Mantido por: Diretoria de Dados | Versão: 1.0 | Julho 2026
