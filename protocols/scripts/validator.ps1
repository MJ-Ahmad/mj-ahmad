<#
.SYNOPSIS
Validates file extensions and structure across mj-ahmad/

.DESCRIPTION
Checks for valid extensions (.json, .md, .ps1, .yml) and logs results to validation-report.txt
#>

$validExt = @(".json", ".md", ".ps1", ".yml")
$report = @()

$files = Get-ChildItem -Path "." -Recurse -File
foreach ($file in $files) {
    $ext = $file.Extension
    $valid = $validExt -contains $ext
    $report += "$($file.FullName) → Extension: $ext → Valid: $valid"
}

$report | Set-Content "metadata/validation-report.txt"
Write-Host "✅ validation-report.txt updated"


