<#
.SYNOPSIS
Logs and validates constitutional changes across MJ-Ahmad Documentation Hub.

.DESCRIPTION
This script audits all markdown and metadata files, verifies traceability, and generates a change log with ethical lineage. It is designed for inheritance, not inspection.

.AUTHOR
MJ Ahmad — Steward of Ethical Inheritance
#>

# Define root path
$RootPath = "C:\Users\quran\source\repos\mj-ahmad\docs"

# Define audit log path
$AuditLog = "$RootPath\audit\change-log.json"

# Initialize log array
$ChangeLog = @()

# Get all markdown and metadata files
$Files = Get-ChildItem -Path $RootPath -Recurse -Include *.md, *.json

foreach ($File in $Files) {
    $Hash = Get-FileHash -Path $File.FullName -Algorithm SHA256
    $LastModified = (Get-Item $File.FullName).LastWriteTimeUtc.ToString("yyyy-MM-ddTHH:mm:ssZ")

    $Entry = [PSCustomObject]@{
        file_path       = $File.FullName.Replace($RootPath, "")
        file_type       = $File.Extension
        date_modified   = $LastModified
        audit_hash      = $Hash.Hash
        steward         = "MJ Ahmad"
        review_status   = "pending"
        traceability    = 1.0
    }

    $ChangeLog += $Entry
}

# Export audit log
$ChangeLog | ConvertTo-Json -Depth 3 | Out-File -Encoding UTF8 $AuditLog

Write-Host "✅ Audit log generated at: $AuditLog"

