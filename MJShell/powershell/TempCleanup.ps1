# MJChronicle_TempCleanup.ps1
# Ritualized Temp folder purge with audit logging and legacy scoring integration

$TempPath = "$env:USERPROFILE\AppData\Local\Temp"
$LogPath = "$env:USERPROFILE\Desktop\MJChronicle_TempCleanup.log"
$Timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

# Initialize log
"[$Timestamp] Starting Temp folder cleanup..." | Out-File -FilePath $LogPath -Encoding UTF8

# Enumerate and delete files
Get-ChildItem -Path $TempPath -File -Force | ForEach-Object {
    try {
        Remove-Item $_.FullName -Force -ErrorAction Stop
        "[$(Get-Date -Format 'HH:mm:ss')] Deleted: $($_.Name)" | Out-File -FilePath $LogPath -Append
    } catch {
        "[$(Get-Date -Format 'HH:mm:ss')] FAILED to delete: $($_.Name) — $($_.Exception.Message)" | Out-File -FilePath $LogPath -Append
    }
}

# Completion log
$FinalCount = (Get-ChildItem -Path $TempPath -File -Force).Count
"[$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')] Cleanup complete. Remaining files: $FinalCount" | Out-File -FilePath $LogPath -Append

# Optional: trigger legacy scoring script
# & "$env:USERPROFILE\MJChronicle\ScoreLegacy.ps1" -Context "TempCleanup" -Log $LogPath

