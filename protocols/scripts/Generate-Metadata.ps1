<#
.SYNOPSIS
Generates metadata/module-index.json based on active folders in mj-ahmad/

.DESCRIPTION
Scans top-level folders and creates a JSON index with name, role, and creation date.
#>

$folders = @("protocols", "systems", "projects", "practice", "public", "metadata", "ethics", "legal", "linkage")
$index = @()

foreach ($folder in $folders) {
    $role = switch ($folder) {
        "protocols" { "Public-facing inheritable modules" }
        "systems"   { "Operational stewardship systems" }
        "projects"  { "Real-world stewardship plans" }
        "practice"  { "Personal learning and reflection" }
        "public"    { "MkDocs-ready documentation" }
        "metadata"  { "Index, audit, validation, linkage" }
        "ethics"    { "Boundary rules and stewardship values" }
        "legal"     { "Rights, claims, and publication scope" }
        "linkage"   { "Public-private relationship map" }
        default     { "Unclassified" }
    }

    $index += @{
        name = $folder
        role = $role
        created = (Get-Date -Format "yyyy-MM-dd")
    }
}

$index | ConvertTo-Json -Depth 3 | Set-Content "metadata/module-index.json"
Write-Host "✅ module-index.json generated"


