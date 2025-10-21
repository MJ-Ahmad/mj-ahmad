
# -------------------------------
# Constitutional Cleanup Script
# Author: MJ Ahmad (Stewardship Protocol)
# Purpose: Remove harmful clutter, restore clarity, and restart system
# -------------------------------

# Run as Administrator
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Warning "Please run this script as Administrator."
    exit
}

# Function: Delete contents safely
function Clear-Folder($Path, $Description) {
    if (Test-Path $Path) {
        Write-Host "🧹 Clearing $Description at $Path..."
        Get-ChildItem -Path $Path -Recurse -Force -ErrorAction SilentlyContinue | Remove-Item -Force -Recurse -ErrorAction SilentlyContinue
    } else {
        Write-Host "⚠️ $Description not found at $Path."
    }
}

# 1. Clear Temp folders
Clear-Folder "$env:TEMP" "User Temp"
Clear-Folder "$env:windir\Temp" "Windows Temp"

# 2. Clear Windows Update cache
Clear-Folder "C:\Windows\SoftwareDistribution\Download" "Windows Update Cache"

# 3. Clear Event Logs (with graceful fallback)
Write-Host "🧾 Attempting to clear Event Logs..."
wevtutil el | ForEach-Object {
    try {
        wevtutil cl $_
        Write-Host "✅ Cleared log: $_"
    } catch {
        Write-Warning "⚠️ Failed to clear log: $_ — $($_.Exception.Message)"
    }
}


# 4. Clear Prefetch
Clear-Folder "C:\Windows\Prefetch" "Prefetch Data"

# 5. Clear Internet Explorer cache (if applicable)
Clear-Folder "$env:LOCALAPPDATA\Microsoft\Windows\INetCache" "IE Cache"

# 6. Clear Recycle Bin
Write-Host "🗑️ Emptying Recycle Bin..."
$shell = New-Object -ComObject Shell.Application
$recycleBin = $shell.Namespace(0xA)
$recycleBin.Items() | ForEach-Object {Remove-Item $_.Path -Force -Recurse -ErrorAction SilentlyContinue}

# 7. Clear Run history (Registry)
Write-Host "🧠 Clearing Run history..."
Remove-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" -Force -ErrorAction SilentlyContinue

# 8. Clear Recent Documents
Clear-Folder "$env:APPDATA\Microsoft\Windows\Recent" "Recent Documents"

# 9. Clear Windows Logs
Clear-Folder "C:\Windows\Logs" "Windows Logs"

# 10. Clear System Temp (if safe)
Clear-Folder "C:\Windows\Temp" "System Temp"

# 11. Optional: Clear Thumbnail Cache
Clear-Folder "$env:LOCALAPPDATA\Microsoft\Windows\Explorer" "Thumbnail Cache"

# 12. Restart system
Write-Host "🔄 Restarting system to complete cleanup..."
Restart-Computer -Force

