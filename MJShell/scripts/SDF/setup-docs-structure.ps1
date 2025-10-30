# setup-sdf.ps1 — MJ-Ahmad Stewardship System Folder Setup Script
# Date: 2025-10-30
# Steward: MJ Ahmad

$root = "$env:USERPROFILE\source\repos\mj-ahmad\docs\LifeFuel"

# Core folders
$folders = @(
    "$root",
    "$root/AuditLog",
    "$root/Learnings",
    "$root/Logs/2025-10-29",
    "$root/Logs/2025-10-30",
    "$root/Reports/Performance",
    "$root/Initiation",
    "$root/Observation",
    "$root/Reporting",
    "$root/Mastery",
    "$root/Roles",
    "$root/projects/quran-fariwala-40k",
    "$root/protocol"
)

# Create folders
foreach ($folder in $folders) {
    if (-not (Test-Path $folder)) {
        New-Item -ItemType Directory -Path $folder | Out-Null
    }
}

# Core files with placeholder content
$files = @{
    "$root/index.md" = "# 🏛️ Welcome\n\nThis is the constitutional front page of MJ-Ahmad's stewardship system."
    "$root/roadmap.md" = "# 📘 MJ-Ahmad Stewardship System Architecture Roadmap\n\n_This roadmap tracks every learning layer and audit entry._"
    "$root/Timeline.md" = "# 🕰️ Timeline\n\n_Chronological record of constitutional actions and learning milestones._"
    "$root/AuditLog/index.md" = "# ✅ Audit Log\n\n_All daily constitutional actions are recorded here._"
    "$root/Learnings/Keywords.md" = "# 📚 Keywords\n\n_Glossary of learned terms and concepts._"
    "$root/Reports/Performance/index.md" = "# 📊 Performance Reports\n\n_Exported system observations and CSV files._"
    "$root/Logs/2025-10-29/task-manager-observation.md" = "# 🗓️ Task Manager Observation\n\n_Initial system dashboard review._"
    "$root/Logs/2025-10-30/cpu-observation.md" = "# 🗓️ CPU Observation\n\n_Observation using get-process.ps1._"
    "$root/Initiation/SDF-INIT-01.md" = "# SDF-INIT-01 — Task Manager\n\nView CPU, RAM, and disk usage."
    "$root/Initiation/SDF-INIT-01-quiz.md" = "# Quiz: Task Manager\n\n1. What tab shows CPU usage?\n- [ ] Services\n- [x] Performance\n..."
    "$root/Initiation/SDF-INIT-02.md" = "# SDF-INIT-02 — Performance Monitor\n\nLive system performance monitoring."
    "$root/Initiation/SDF-INIT-03.md" = "# SDF-INIT-03 — Event Viewer\n\nView system logs and errors."
    "$root/Initiation/SDF-INIT-04.md" = "# SDF-INIT-04 — Sysinternals Tools\n\nExplore advanced system tools."
    "$root/Initiation/SDF-INIT-05.md" = "# SDF-INIT-05 — PowerShell Basics\n\nLearn basic system commands."
    "$root/Observation/SDF-OBS-01.md" = "# SDF-OBS-01 — get-process.ps1\n\nIdentify high-CPU processes."
    "$root/Observation/SDF-OBS-02.md" = "# SDF-OBS-02 — get-service.ps1\n\nList running services."
    "$root/Observation/SDF-OBS-03.md" = "# SDF-OBS-03 — get-eventlog.ps1\n\nView recent system logs."
    "$root/Observation/SDF-OBS-04.md" = "# SDF-OBS-04 — get-counter.ps1\n\nLive performance counters."
    "$root/Observation/SDF-OBS-05.md" = "# SDF-OBS-05 — get-osinfo.ps1\n\nView system info."
    "$root/Reporting/SDF-REP-01.md" = "# SDF-REP-01 — Export-Csv\n\nExport data to CSV."
    "$root/Reporting/SDF-REP-02.md" = "# SDF-REP-02 — Out-File\n\nExport data to TXT."
    "$root/Reporting/SDF-REP-03.md" = "# SDF-REP-03 — Markdown Template\n\nCreate readable `.md` reports."
    "$root/Reporting/SDF-REP-04.md" = "# SDF-REP-04 — ConvertTo-Json\n\nExport data to JSON."
    "$root/Reporting/SDF-REP-05.md" = "# SDF-REP-05 — Send-MailMessage\n\nSend reports via email."
    "$root/Mastery/SDF-MAS-01.md" = "# SDF-MAS-01 — Write Custom Scripts\n\nBuild confidence and skill."
    "$root/Mastery/SDF-MAS-02.md" = "# SDF-MAS-02 — Create Markdown Guides\n\nTeach others."
    "$root/Mastery/SDF-MAS-03.md" = "# SDF-MAS-03 — Publish on GitHub\n\nShare publicly."
    "$root/Mastery/SDF-MAS-04.md" = "# SDF-MAS-04 — Campaign Summary\n\nStewardship continuity."
    "$root/Roles/Copilot.md" = "# Microsoft Copilot — Constitutional Associate\n\nEthical guidance and documentation clarity."
    "$root/Roles/PowerShell.md" = "# PowerShell — Surveillance & Audit Steward\n\nSystem integrity and observation."
    "$root/Roles/Python.md" = "# Python — Analytical Structuring Steward\n\nData modeling and insight."
    "$root/Roles/GitHubActions.md" = "# GitHub Actions — Automation Execution Steward\n\nReproducible task orchestration."
    "$root/Roles/MkDocs.md" = "# MkDocs — Public Documentation Steward\n\nMultilingual publishing."
    "$root/Roles/GitBook.md" = "# GitBook — Legacy Constitution Steward\n\nGovernance and ethical preservation."
    "$root/Roles/GitHubPages.md" = "# GitHub Pages — Publishing Steward\n\nPublic access and archival."
    "$root/Roles/Markdown.md" = "# Markdown — Semantic Language Steward\n\nReadable and respectful formatting."
    "$root/Roles/TrustFramework.md" = "# Microsoft Trust Framework — Legal & Security Steward\n\nCompliance and protection."
    "$root/projects/quran-fariwala-40k/index.md" = "# Quraner Fariwala — Project Overview\n\nLegacy-driven Qur’an distribution."
    "$root/projects/quran-fariwala-40k/plan.md" = "# Distribution Plan\n\nRegion mapping and logistics."
    "$root/projects/quran-fariwala-40k/budget.md" = "# Budget Breakdown\n\nTransparent cost structure."
    "$root/projects/quran-fariwala-40k/receipts.md" = "# Receipts\n\nProof of flow and verification."
    "$root/projects/quran-fariwala-40k/ethics.md" = "# Ethical Boundaries\n\nPublication rights and dignity."
    "$root/protocol/update.md" = "# Update Protocol\n\nRules for updating roadmap and documentation."
    "$root/protocol/learning-structure.md" = "# Learning Structure\n\nClass and quiz setup protocol."
}

# Create files with content
foreach ($path in $files.Keys) {
    if (-not (Test-Path $path)) {
        $content = $files[$path]
        $content | Out-File -FilePath $path -Encoding UTF8
    }
}

