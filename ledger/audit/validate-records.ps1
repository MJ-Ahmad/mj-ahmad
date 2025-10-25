$folders = @("supporters", "donors", "loans")
foreach ($folder in $folders) {
    Get-ChildItem "stewardship-archive\$folder" -Directory | ForEach-Object {
        $jsonName = if ($folder -eq "supporters") { "supporter.json" }
                    elseif ($folder -eq "donors") { "donor.json" }
                    else { "loan.json" }
        $jsonPath = "stewardship-archive\$folder\$($_.Name)\$jsonName"
        if (Test-Path $jsonPath) {
            try {
                Get-Content $jsonPath | ConvertFrom-Json | Out-Null
                Write-Host "$jsonPath ✅ Valid JSON"
            } catch {
                Write-Host "$jsonPath ❌ Invalid JSON"
            }
        } else {
            Write-Host "$jsonPath ❌ Missing JSON"
        }
    }
}

