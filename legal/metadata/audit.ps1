param (
    [string]$Action,
    [string]$ID,
    [string]$Folder,
    [string]$Steward = "MJ Ahmad"
)

$entry = "- $(Get-Date -Format 'yyyy-MM-dd') | $Action | $ID | $Folder | $Steward"
Add-Content "metadata\audit-log.md" $entry
Write-Host "📌 Audit entry added."


