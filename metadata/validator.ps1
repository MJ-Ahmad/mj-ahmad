<#
.SYNOPSIS
    Validates metadata JSON files against the MJ-Ahmad Metadata Schema.

.DESCRIPTION
    This script enforces schema compliance for all metadata files in the documentation hub.
    It ensures that each file contains the required fields and follows the defined structure.

.NOTES
    Author: MJ Ahmad — Steward of Ethical Inheritance
    Date:   $(Get-Date -Format "yyyy-MM-dd")
#>

# Define paths
$SchemaPath = "$PSScriptRoot\..\metadata\schema.json"
$MetadataRoot = "$PSScriptRoot\..\docs"

# Load schema
if (-not (Test-Path $SchemaPath)) {
    Write-Error "❌ Schema file not found at $SchemaPath"
    exit 1
}

$SchemaJson = Get-Content $SchemaPath -Raw | ConvertFrom-Json

# Required fields from schema
$RequiredFields = $SchemaJson.required

# Find all metadata.json files recursively
$MetadataFiles = Get-ChildItem -Path $MetadataRoot -Recurse -Filter *.json

if ($MetadataFiles.Count -eq 0) {
    Write-Host "⚠️ No metadata files found under $MetadataRoot"
    exit 0
}

# Validate each file
foreach ($file in $MetadataFiles) {
    Write-Host "`n🔍 Validating: $($file.FullName)" -ForegroundColor Cyan
    try {
        $json = Get-Content $file.FullName -Raw | ConvertFrom-Json
    } catch {
        Write-Host "❌ Invalid JSON format." -ForegroundColor Red
        continue
    }

    $missing = @()
    foreach ($field in $RequiredFields) {
        if (-not $json.PSObject.Properties.Name -contains $field) {
            $missing += $field
        }
    }

    if ($missing.Count -eq 0) {
        Write-Host "✅ Valid metadata file." -ForegroundColor Green
    } else {
        Write-Host "❌ Missing required fields: $($missing -join ', ')" -ForegroundColor Red
    }
}

Write-Host "`n🧾 Metadata validation complete." -ForegroundColor Yellow

