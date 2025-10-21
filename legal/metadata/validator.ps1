param (
    [string]$MetadataFile
)

# Load schema and metadata
$schema = Get-Content "metadata\schema.json" -Raw | ConvertFrom-Json
$metadata = Get-Content $MetadataFile -Raw | ConvertFrom-Json

$errors = @()

# Check required fields
foreach ($key in $schema.required) {
    if (-not $metadata.PSObject.Properties.Name -contains $key) {
        $errors += "❌ Missing required field: $key"
    }
}

# Validate enum values
if ($schema.properties.type.enum -notcontains $metadata.type) {
    $errors += "❌ Invalid type: $($metadata.type)"
}
if ($schema.properties.status.enum -notcontains $metadata.status) {
    $errors += "❌ Invalid status: $($metadata.status)"
}

# Output result
if ($errors.Count -eq 0) {
    Write-Host "✅ Metadata is valid."
} else {
    $errors | ForEach-Object { Write-Host $_ }
}



