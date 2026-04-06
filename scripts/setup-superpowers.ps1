
# temp-config-repo/scripts/setup-superpowers.ps1
param(
    [string]$RepoUrl,
    [switch]$Global
)

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Superpowers 配置安装脚本" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

$TargetDir = if ($Global) { "$env:USERPROFILE\.trae" } else { ".trae" }

Write-Host "目标目录: $TargetDir" -ForegroundColor Yellow
Write-Host ""

if (-not (Test-Path $TargetDir)) {
    Write-Host "创建目录: $TargetDir" -ForegroundColor Green
    New-Item -ItemType Directory -Force -Path $TargetDir | Out-Null
}

Write-Host "复制 skills..." -ForegroundColor Green
Copy-Item -Recurse -Force "$PSScriptRoot\..\.trae\skills\*" "$TargetDir\skills\" -ErrorAction SilentlyContinue

Write-Host "复制 rules..." -ForegroundColor Green
Copy-Item -Recurse -Force "$PSScriptRoot\..\.trae\rules\*" "$TargetDir\rules\" -ErrorAction SilentlyContinue

Write-Host ""
Write-Host "✅ Superpowers 配置安装完成！" -ForegroundColor Green
Write-Host ""
Write-Host "使用方法：" -ForegroundColor Cyan
Write-Host "  在项目中，Trae 会自动加载 .trae/ 目录下的技能和规则" -ForegroundColor White
Write-Host ""

