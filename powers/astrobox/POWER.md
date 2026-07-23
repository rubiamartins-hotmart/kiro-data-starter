---
name: "astrobox"
displayName: "Astrobox"
description: "Query, execute, create, edit, and export data queries from Hotmart's Astrobox platform via MCP."
keywords: ["astrobox", "hotmart", "sql", "query", "data"]
author: "Hotmart Data Team"
---

# Astrobox

## Overview

Astrobox is Hotmart's internal data platform for querying and analyzing data. This power connects to the MCP Astrobox server, enabling LLMs to interact with the platform — retrieve query metadata, execute SQL, create and edit saved queries, and export results in CSV, JSON, or XLS.

## Onboarding

### Prerequisites

- Hotmart VPN active
- Valid Hotmart SSO JWT token

### How to Get Your SSO Token

1. Open [Astrobox](https://astrobox.hotmart.com) in your browser
2. Open DevTools (F12) → Network tab
3. Copy the `Authorization` header value from any request (include the "Bearer " prefix)
4. Paste into `mcp.json`

Tokens expire periodically (~48h) and must be renewed manually.

### Environments

| Environment | URL |
|-------------|-----|
| Staging | `https://mcp-internal.buildstaging.com/astrobox/mcp` |
| Production | `https://mcp.hotmart.dev/astrobox/mcp` |

## Common Workflows

- **get_query** — Inspect saved query metadata (SQL, params, datasource)
- **execute_query** — Run saved query and get download link (CSV/JSON/XLS)
- **execute_sql** — Ad-hoc SQL (limited to 10 rows)
- **persist_query** + **confirm_persist_query** — Create/edit queries (two-step)
- **analyze_query** — EXPLAIN for performance analysis
- **publish_report** + **confirm_publish_report** — Publish HTML reports

## Best Practices

- Prefer saved queries over ad-hoc SQL
- Queries in the Diamante (Diamond) layer are optimized
- Always use `get_query` before executing to understand parameters
