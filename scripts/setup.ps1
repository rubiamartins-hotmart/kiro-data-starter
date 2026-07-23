#!/usr/bin/env pwsh
# Setup script para onboarding na Diretoria de Dados
# Execute: .\scripts\setup.ps1

Write-Host "🚀 Kiro Data Starter — Setup" -ForegroundColor Cyan
Write-Host "==============================" -ForegroundColor Cyan
Write-Host ""

# 1. Verificar pré-requisitos
Write-Host "📋 Verificando pré-requisitos..." -ForegroundColor Yellow

# Python
$python = Get-Command python -ErrorAction SilentlyContinue
if ($python) {
    $pyVersion = python --version 2>&1
    Write-Host "  ✅ Python: $pyVersion" -ForegroundColor Green
} else {
    Write-Host "  ❌ Python não encontrado. Instale Python 3.12+" -ForegroundColor Red
}

# uv/uvx
$uv = Get-Command uv -ErrorAction SilentlyContinue
if ($uv) {
    $uvVersion = uv --version 2>&1
    Write-Host "  ✅ uv: $uvVersion" -ForegroundColor Green
} else {
    Write-Host "  ❌ uv não encontrado. Instale: pip install uv" -ForegroundColor Red
}

# GitHub CLI
$gh = Get-Command gh -ErrorAction SilentlyContinue
if ($gh) {
    $ghAuth = gh auth status 2>&1
    if ($LASTEXITCODE -eq 0) {
        Write-Host "  ✅ GitHub CLI: autenticado" -ForegroundColor Green
    } else {
        Write-Host "  ⚠️  GitHub CLI instalado mas não autenticado. Execute: gh auth login" -ForegroundColor Yellow
    }
} else {
    Write-Host "  ❌ GitHub CLI não encontrado. Instale: winget install GitHub.cli" -ForegroundColor Red
}

# Git
$git = Get-Command git -ErrorAction SilentlyContinue
if ($git) {
    $gitVersion = git --version 2>&1
    Write-Host "  ✅ Git: $gitVersion" -ForegroundColor Green
} else {
    Write-Host "  ❌ Git não encontrado" -ForegroundColor Red
}

Write-Host ""
Write-Host "📦 Estrutura .kiro/ detectada:" -ForegroundColor Yellow
if (Test-Path ".kiro") {
    Get-ChildItem -Path ".kiro" -Recurse -Name | ForEach-Object { Write-Host "  .kiro/$_" -ForegroundColor Gray }
} else {
    Write-Host "  ❌ Pasta .kiro/ não encontrada. Você está no diretório correto?" -ForegroundColor Red
}

Write-Host ""
Write-Host "🔧 Próximos passos:" -ForegroundColor Yellow
Write-Host "  1. Configure o token Astrobox em .kiro/settings/mcp.json" -ForegroundColor White
Write-Host "     (Abra https://astrobox.hotmart.com → DevTools → copie o Bearer token)" -ForegroundColor Gray
Write-Host "  2. Ative a VPN Hotmart" -ForegroundColor White
Write-Host "  3. Abra o projeto no Kiro" -ForegroundColor White
Write-Host "  4. Instale skills do JedAI (opcional): veja .kiro/skills/README.md" -ForegroundColor White
Write-Host ""
Write-Host "✨ Setup concluído!" -ForegroundColor Green
