param (
    [string]$ID,
    [string]$Type,
    [string]$Status = "draft",
    [string]$Location,
    [string]$AssignedTo = "MJ Ahmad",
    [string]$Notes = ""
)

$metadata = @{
    id = $ID
    type = $Type
    status = $Status
    created = (Get-Date).ToString("yyyy-MM-dd")
    updated = (Get-Date).ToString("yyyy-MM-dd")
    location = $Location
    assigned_to = $AssignedTo
    notes = $Notes
}

$path = "metadata\$ID.metadata.json"
$metadata | ConvertTo-Json -Depth 3 | Set-Content $path

Write-Host "✅ Metadata created at $path"

