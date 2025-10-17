function Render-LegacyGraph {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [int[]]$Points,

        [Parameter(Mandatory=$false)]
        [string]$Title = "Legacy Graph",

        [Parameter(Mandatory=$false)]
        [ValidateSet("Line", "Bar", "Pie", "Scatter")]
        [string]$Type = "Line"
    )

    try {
        Write-Host "`n=== $Title ===`n" -ForegroundColor Cyan
        Show-Graph -Datapoints $Points -Type $Type
    }
    catch {
        Write-Warning "গ্রাফ রেন্ডার করতে ব্যর্থ: $_"
    }
}


