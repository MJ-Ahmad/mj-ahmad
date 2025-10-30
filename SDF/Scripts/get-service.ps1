<#
.SYNOPSIS
    Lists all currently running Windows services.

.DESCRIPTION
    This script filters all services that are currently running,
    selects key properties, and displays them in a child-readable format.

.OUTPUT
    Console output (can be redirected to file if needed)
#>

# Get all running services
$runningServices = Get-Service | Where-Object { $_.Status -eq 'Running' }

# Display in readable format
$runningServices |
    Select-Object DisplayName, Name, Status, StartType |
    Sort-Object DisplayName |
    Format-Table -AutoSize

Write-Output "`n✅ Total running services: $($runningServices.Count)"
