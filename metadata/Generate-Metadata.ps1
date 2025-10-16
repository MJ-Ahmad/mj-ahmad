<#
.SYNOPSIS
    Auto-generates metadata JSON files for all Markdown documents.

.DESCRIPTION
    Scans the documentation hub for .md files and creates corresponding .metadata.json files
    using the MJ-Ahmad Metadata Schema. Skips files that already have metadata.

.NOTES
    Author: MJ Ahmad — Steward of Ethical Inheritance
    Date:   $(Get-Date -Format "yyyy-MM-dd")
#>

# Root documentation folder
$DocsRoot = "$PSScriptRoot\..\docs"

# Today's date
$Today = Get-Date -Format "yyyy-MM-dd"

# Function to generate metadata content
function New-MetadataObject($Title) {
    return @{
        title         = $Title
        author        = "MJ Ahmad"
        version       = "1.0"
        date_created  = $Today
        last_updated  = $Today
        tags          = @("documentation", "constitutional")
        status        = "draft"
        license       = "Ethical Inheritance License"
    } | ConvertTo-Json -Depth 3
}

# Scan for .md files
$MarkdownFiles = Get-ChildItem -Path $DocsRoot -Recurse -Filter *.md

foreach ($mdFile in $MarkdownFiles) {
    $BaseName = [System.IO.Path]::GetFileNameWithoutExtension($mdFile.Name)
    $MetaPath = Join-Path $mdFile.Directory.FullName "$BaseName.metadata.json"

    if (Test-Path $MetaPath) {
        Write-Host "🟡 Metadata exists: $MetaPath" -ForegroundColor Yellow
        continue
    }

    $MetadataJson = New-MetadataObject -Title $BaseName
    $MetadataJson | Out-File -FilePath $MetaPath -Encoding UTF8
    Write-Host "✅ Created metadata: $MetaPath" -ForegroundColor Green
}

Write-Host "`n🧾 Metadata generation complete." -ForegroundColor Cyan


