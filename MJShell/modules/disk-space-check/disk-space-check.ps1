# -------------------------------
# Disk Space Audit Script — MJ Ahmad
# Purpose: Identify largest folders in C: drive for ethical cleanup
# -------------------------------

# Run as Administrator (optional but recommended)
$targetDrive = "C:\"
$maxDepth = 2  # Limit depth for clarity and performance

Write-Host "📊 Auditing disk space usage on $targetDrive..."

# Function: Get folder size recursively
function Get-FolderSize($Path) {
    try {
        $size = (Get-ChildItem -Path $Path -Recurse -Force -ErrorAction SilentlyContinue | Measure-Object -Property Length -Sum).Sum
        return [math]::Round($size / 1MB, 2)
    } catch {
        return 0
    }
}

# Get top-level folders
$folders = Get-ChildItem -Path $targetDrive -Directory -Force -ErrorAction SilentlyContinue

# Analyze each folder
$results = @()
foreach ($folder in $folders) {
    $sizeMB = Get-FolderSize $folder.FullName
    $results += [PSCustomObject]@{
        Folder = $folder.FullName
        SizeMB = $sizeMB
    }
}

# Sort and display top 10 largest folders
$topFolders = $results | Sort-Object -Property SizeMB -Descending | Select-Object -First 10

Write-Host "`n📁 Top 10 Largest Folders in ${targetDrive}:`n"
$topFolders | Format-Table -AutoSize

# Optional: Save to audit-log
$logPath = "$PSScriptRoot\disk-space-audit-log.txt"
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
"Disk Space Audit — $timestamp" | Out-File $logPath
$topFolders | Out-File $logPath -Append

Write-Host "`n📝 Audit log saved to: $logPath"


