# -------------------------------
# Disk Cleanse Script — MJ Ahmad
# Purpose: Ethically clear C: drive clutter
# -------------------------------

# Run as Administrator
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Warning "Please run this script as Administrator."
    exit
}

function Force-ClearFolder($Path, $Description) {
    if (Test-Path $Path) {
        Write-Host "🧹 Force-clearing $Description at $Path..."
        Get-ChildItem -Path $Path -Recurse -Force -ErrorAction SilentlyContinue | ForEach-Object {
            try {
                $_.Attributes = 'Normal'
                Remove-Item $_.FullName -Force -Recurse -ErrorAction SilentlyContinue
            } catch {
                Write-Warning "⚠️ Could not delete: $($_.FullName)"
            }
        }
    } else {
        Write-Host "⚠️ $Description not found at $Path."
    }
}


# 1. Clear user temp folder (specific)
Force-ClearFolder "C:\Users\quran\AppData\Local\Temp" "User Temp (quran)"

# 2. Clear global temp folders
Force-ClearFolder "$env:TEMP" "Current User Temp"
Force-ClearFolder "$env:windir\Temp" "Windows Temp"
Force-ClearFolder "C:\Windows\Temp" "System Temp"

# 3. Clear SoftwareDistribution cache
Force-ClearFolder "C:\Windows\SoftwareDistribution\Download" "Windows Update Cache"

# 4. Clear Prefetch
Force-ClearFolder "C:\Windows\Prefetch" "Prefetch Data"

# 5. Clear Thumbnail Cache
Force-ClearFolder "$env:LOCALAPPDATA\Microsoft\Windows\Explorer" "Thumbnail Cache"

# 6. Clear Recycle Bin
Write-Host "🗑️ Emptying Recycle Bin..."
$shell = New-Object -ComObject Shell.Application
$recycleBin = $shell.Namespace(0xA)
$recycleBin.Items() | ForEach-Object {Remove-Item $_.Path -Force -Recurse -ErrorAction SilentlyContinue}

# 7. Clear Logs
Force-ClearFolder "C:\Windows\Logs" "Windows Logs"
Force-ClearFolder "C:\ProgramData\Microsoft\Windows\WER\ReportArchive" "Error Reports"
Force-ClearFolder "C:\ProgramData\Microsoft\Windows\WER\ReportQueue" "Error Queue"

# 8. Optional: Clear browser cache (Edge/Chrome)
Force-ClearFolder "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\Cache" "Chrome Cache"
Force-ClearFolder "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\Cache" "Edge Cache"

# 9. Summary
Write-Host "✅ Disk cleanse complete. Please restart manually if needed."

