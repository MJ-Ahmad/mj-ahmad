# Root path
$root = "$env:USERPROFILE\source\repos\mj-ahmad\legal"

# Core legal categories
$folders = @(
    "contracts\service-agreements",
    "contracts\partnership-agreements",
    "contracts\employment-contracts",
    "contracts\vendor-agreements",
    "compliance\tax-filings",
    "compliance\audit-reports",
    "compliance\regulatory-submissions",
    "compliance\licensing-certificates",
    "disputes\internal",
    "disputes\external",
    "disputes\mediation-records",
    "disputes\arbitration-awards",
    "litigation\civil-cases",
    "litigation\criminal-cases",
    "litigation\defamation-claims",
    "litigation\harassment-claims",
    "litigation\case-files",
    "notices\legal-notices-received",
    "notices\legal-notices-issued",
    "notices\show-cause-replies",
    "evidence\affidavits",
    "evidence\witness-statements",
    "evidence\correspondence",
    "evidence\digital-records",
    "penalties\fines-paid",
    "penalties\penalty-orders",
    "penalties\settlement-agreements",
    "protection\cease-and-desist",
    "protection\injunctions",
    "protection\restraining-orders",
    "protection\legal-opinions",
    "historical\incidents-2020",
    "historical\incidents-2021",
    "historical\incidents-2022",
    "historical\incidents-2023",
    "historical\incidents-2024",
    "future\project-clearances",
    "future\legal-risk-assessments",
    "future\policy-drafts",
    "future\legal-readiness",
    "individual-claims",
    "group-claims",
    "metadata"
)

# Create folders
foreach ($folder in $folders) {
    $path = Join-Path $root $folder
    New-Item -ItemType Directory -Path $path -Force | Out-Null
}

# Create central README and roadmap
Set-Content "$root\README.md" "# MJ-Ahmad Legal Archive — Central Constitutional Repository`n(README content to be added)"
Set-Content "$root\legal-roadmap.md" "# Legal Roadmap`n(Tracking stages from documentation to litigation)"

# Create metadata files
Set-Content "$root\metadata\audit-log.md" "# Legal Audit Log`n(Traceable actions will be appended here)"
Set-Content "$root\metadata\schema.json" "{`n  `$schema`: `http://json-schema.org/draft-07/schema#`, ... }"  # Placeholder
Set-Content "$root\metadata\Generate-Metadata.ps1" "# Script to generate metadata JSON"
Set-Content "$root\metadata\audit.ps1" "# Script to append audit entries"
Set-Content "$root\metadata\validator.ps1" "# Script to validate metadata against schema"

Write-Host "✅ Legal folder structure initialized at $root"

