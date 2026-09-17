param(
    [string]$Target = "$HOME\.codex\skills"
)

$ErrorActionPreference = "Stop"

$source = Join-Path $PSScriptRoot ".codex\skills"

if (-not (Test-Path -LiteralPath $source)) {
    throw "Skills source folder not found: $source"
}

New-Item -ItemType Directory -Force -Path $Target | Out-Null

Get-ChildItem -LiteralPath $source -Directory | ForEach-Object {
    $destination = Join-Path $Target $_.Name
    if (Test-Path -LiteralPath $destination) {
        Remove-Item -LiteralPath $destination -Recurse -Force
    }
    Copy-Item -LiteralPath $_.FullName -Destination $destination -Recurse -Force
    Write-Host "Installed skill: $($_.Name)"
}

Write-Host "Done. Skills installed to: $Target"

