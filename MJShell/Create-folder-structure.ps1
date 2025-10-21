# MJ-Ahmad Repository Setup Script
# Creates constitutional folder structure for ethical inheritance

$root = "mj-ahmad"
New-Item -Path $root -ItemType Directory -Force

# Top-level files
New-Item "$root\README.md" -ItemType File -Force
New-Item "$root\mkdocs.yml" -ItemType File -Force

# Helper function
function New-FolderWithFiles($base, $folders, $files) {
    foreach ($folder in $folders) {
        New-Item "$base\$folder" -ItemType Directory -Force
    }
    foreach ($file in $files) {
        New-Item "$base\$file" -ItemType File -Force
    }
}

# Modules
New-FolderWithFiles "$root\audit-metadata-hub" @("metadata", "audit", "scripts") @()

New-FolderWithFiles "$root\campaign-engine" @("strategy", "templates", "targets", "donor-engagement", "reports") @()

New-FolderWithFiles "$root\continuity-fund" @() @("fund-declaration.md", "fund-log.json", "usage-policy.md")

New-FolderWithFiles "$root\distribution-engine" @() @("district-map.md", "vendor-list.md", "copy-tracker.json")

New-FolderWithFiles "$root\gateway-activation" @() @("stripe.md", "wise.md", "paypal.md", "ethereum.md", "gateway-status.json")

New-FolderWithFiles "$root\guardian-handbook" @() @("stewardship-roles.md", "ethical-boundaries.md", "escalation-protocol.md")

New-FolderWithFiles "$root\legal-archive" @("bd", "uk", "global") @()

New-FolderWithFiles "$root\payment-portal" @("accounts", "gateways", "links", "integration") @()

New-FolderWithFiles "$root\press-kit" @("visual-assets") @("press-release.md", "campaign-summary.md")

New-FolderWithFiles "$root\private-archive" @("personal-channel", "donors", "supporters") @()

New-FolderWithFiles "$root\public-index" @() @("campaign-entry.md", "donation-options.md", "sponsor-acknowledgment.md")

New-FolderWithFiles "$root\ratification-records" @("reviewer-notes") @("ratified-actions.md", "pending-review.md")

New-FolderWithFiles "$root\relationship-hub" @("receipt-center", "donor-portal", "supporter-portal") @()

New-FolderWithFiles "$root\volunteer-hub" @() @("onboarding-guide.md", "role-descriptions.md", "contact-log.json")

Write-Host "✅ MJ-Ahmad repository structure created successfully."

