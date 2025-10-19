# ================================
# Script: New-PaymentPortalStructure.ps1
# Purpose: Create structured folders for a multi-gateway payment portal
# Author: MJ Ahmad (via Copilot)
# Date: $(Get-Date -Format "yyyy-MM-dd")
# ================================

$basePath = Join-Path $env:USERPROFILE "source\repos\payment-portal"

# Define folder structure
$folders = @(
    "$basePath\docs",
    "$basePath\backend\stripe",
    "$basePath\backend\wise",
    "$basePath\backend\paypal",
    "$basePath\backend\local-bank",
    "$basePath\backend\mobile-banking",
    "$basePath\backend\crypto",
    "$basePath\frontend\components",
    "$basePath\frontend\pages",
    "$basePath\frontend\styles",
    "$basePath\scripts",
    "$basePath\legacy"
)

# Create folders
foreach ($folder in $folders) {
    if (-not (Test-Path $folder)) {
        New-Item -ItemType Directory -Path $folder -Force | Out-Null
        Write-Host "Created: $folder"
    } else {
        Write-Host "Exists:  $folder"
    }
}

# Create placeholder files
New-Item -Path "$basePath\README.md" -ItemType File -Force | Out-Null
New-Item -Path "$basePath\.env.example" -ItemType File -Force | Out-Null
New-Item -Path "$basePath\docs\architecture.md" -ItemType File -Force | Out-Null
New-Item -Path "$basePath\docs\api-reference.md" -ItemType File -Force | Out-Null
New-Item -Path "$basePath\docs\onboarding.md" -ItemType File -Force | Out-Null
New-Item -Path "$basePath\legacy\DEDICATION_EN.md" -ItemType File -Force | Out-Null
New-Item -Path "$basePath\scripts\audit-log.ps1" -ItemType File -Force | Out-Null

Write-Host "`n✅ Payment portal structure initialized at: $basePath"

