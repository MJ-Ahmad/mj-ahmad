<#
.SYNOPSIS
Child-readable ASCII graph renderer for MJ-Ahmad Hub.

.DESCRIPTION
This function renders a simple vertical bar graph in the terminal using ASCII characters.
It is designed to be ethical, understandable by children, and suitable for legacy documentation.

.PARAMETER Datapoints
An array of integers to visualize.

.PARAMETER Title
Optional title to display above the graph.

.EXAMPLE
Show-Graph -Datapoints @(1, 4, 9, 16) -Title "Perfect Squares"
#>

function Show-Graph {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [int[]]$Datapoints,

        [Parameter(Mandatory = $false)]
        [string]$Title = "Untitled"
    )

    # Display title
    Write-Host ""
    Write-Host "┌─ $Title ─┐" -ForegroundColor Cyan

    # Determine graph height
    $max = ($Datapoints | Measure-Object -Maximum).Maximum
    $scale = if ($max -gt 0) { [math]::Ceiling($max / 10.0) } else { 1 }

    # Render graph rows from top to bottom
    for ($row = $scale * 10; $row -ge 0; $row -= $scale) {
        $line = "│".PadRight(4)
        foreach ($point in $Datapoints) {
            if ($point -ge $row) {
                $line += "█".PadRight(2)
            } else {
                $line += " ".PadRight(2)
            }
        }
        Write-Host $line
    }

    # Render bottom axis
    Write-Host "└" + ("─" * ($Datapoints.Count * 2 + 2)) + "┘"
    Write-Host ""
}

