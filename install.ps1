$ErrorActionPreference="Stop"; Set-Location $PSScriptRoot
$d = Join-Path $env:USERPROFILE ".claude\skills\plaintalk"
New-Item -ItemType Directory -Force $d | Out-Null
Copy-Item "SKILL.md" (Join-Path $d "SKILL.md") -Force
Write-Host "installed: $d\SKILL.md"; Write-Host "claude.ai: upload dist\plaintalk.zip under Settings > Customize > Skills"
