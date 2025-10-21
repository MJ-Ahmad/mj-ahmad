# Generate-JsonFromSchema.ps1
# MJ Ahmad Documentation Hub — JSON Editor from Schema
# Purpose: Load a JSON Schema and generate a child-readable JSON object interactively

param (
    [string]$SchemaPath = "schemas/docs-index.schema.json",
    [string]$OutputPath = "output/generated-docs-index.json"
)

# Load schema
$schema = Get-Content $SchemaPath | ConvertFrom-Json

# Initialize output object
$output = @{}

Write-Host "`n🧬 Generating JSON from schema: $($schema.title)`n" -ForegroundColor Cyan
Write-Host "📜 Description: $($schema.description)`n"

# Loop through required properties
foreach ($prop in $schema.required) {
    $details = $schema.properties.$prop
    $type = $details.type
    $desc = $details.description

    Write-Host "🔹 $prop ($type): $desc" -ForegroundColor Yellow

    if ($type -eq "string") {
        $input = Read-Host "Enter value for '$prop'"
        $output[$prop] = $input
    }
    elseif ($type -eq "array") {
        $items = @()
        Write-Host "Enter multiple values for '$prop'. Type 'done' to finish." -ForegroundColor Gray
        while ($true) {
            $entry = Read-Host "→"
            if ($entry -eq "done") { break }
            $items += $entry
        }
        $output[$prop] = $items
    }
    else {
        Write-Host "⚠️ Unsupported type: $type" -ForegroundColor Red
    }
}

# Save output
$output | ConvertTo-Json -Depth 5 | Out-File $OutputPath -Encoding UTF8
Write-Host "`n✅ JSON generated and saved to: $OutputPath" -ForegroundColor Green

