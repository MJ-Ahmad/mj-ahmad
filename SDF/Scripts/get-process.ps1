<#
.SYNOPSIS
    Observes running processes and exports a child-readable CPU usage report.

.DESCRIPTION
    This script lists all running processes, sorts them by CPU usage (descending),
    selects key properties, and exports the result to a CSV file for audit and learning.

.OUTPUT
    CSV file saved to ../Reports-en/Performance/cpu-usage-YYYY-MM-DD.csv
#>

# Set date for filename
$today = Get-Date -Format "yyyy-MM-dd"

# Define output path
$outputPath = "..\\Reports-en\\Performance\\cpu-usage-$today.csv"

# Get top processes by CPU usage
Get-Process |
    Sort-Object CPU -Descending |
    Select-Object -First 10 Name, CPU, Id, PM, StartTime -ErrorAction SilentlyContinue |
    ForEach-Object {
        [PSCustomObject]@{
            "Process Name"     = $_.Name
            "CPU Usage (%)"    = "{0:N1}" -f $_.CPU
            "Memory Usage (MB)"= "{0:N0}" -f ($_.PM / 1MB)
            "Process ID"       = $_.Id
            "Start Time"       = $_.StartTime
        }
    } | Export-Csv -Path $outputPath -NoTypeInformation -Encoding UTF8

Write-Output "✅ CPU usage report saved to $outputPath"
