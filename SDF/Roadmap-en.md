# SystemOps Documentation Framework (SDF) — Learning Roadmap

**Initiated by:** MJ Ahmad  
**Start Date:** 2025-10-29  
**Purpose:**  
To master Windows system observation, reporting, and documentation using PowerShell — in a way that is child-readable, audit-traceable, and ethically inheritable.

---

## 🧠 1. Initiation Layer: Understanding system dashboards

| Code | Topic | Goal | Status | Date |
|------|-------|------|--------|------|
| SDF-INIT-01 | Task Manager | View processes, CPU, RAM, Disk usage | ✅ | 2025-10-29 |
| SDF-INIT-02 | Performance Monitor | Monitor live system performance | ⏳ | Planned |
| SDF-INIT-03 | Event Viewer | View system logs and errors | ⏳ | Planned |
| SDF-INIT-04 | Sysinternals Tools | Explore Process Explorer, Autoruns | ⏳ | Planned |
| SDF-INIT-05 | PowerShell Basics | Learn `Get-Process`, `Get-Service`, etc. | ⏳ | Planned |

---

## 📊 2. Observation Layer: Monitoring with PowerShell

| Code | Script | Purpose | Status | Date |
|------|--------|---------|--------|------|
| SDF-OBS-01 | `Get-Process | Sort-Object CPU` | Identify high-CPU processes | ⏳ | Planned |
| SDF-OBS-02 | `Get-Service | Where-Object {$_.Status -eq 'Running'}` | Filter running services | ⏳ | Planned |
| SDF-OBS-03 | `Get-EventLog -LogName System` | View recent system logs | ⏳ | Planned |
| SDF-OBS-04 | `Get-Counter` | Live performance counters | ⏳ | Planned |
| SDF-OBS-05 | `Get-WmiObject Win32_OperatingSystem` | View system info | ⏳ | Planned |

---

## 📜 3. Reporting Layer: Creating readable reports

| Code | Method | Output Format | Status | Date |
|------|--------|---------------|--------|------|
| SDF-REP-01 | `Export-Csv` | CSV report | ⏳ | Planned |
| SDF-REP-02 | `Out-File` | TXT report | ⏳ | Planned |
| SDF-REP-03 | Markdown Template | `.md` summary | ⏳ | Planned |
| SDF-REP-04 | `ConvertTo-Json` | JSON report | ⏳ | Planned |
| SDF-REP-05 | `Send-MailMessage` | Email delivery (optional) | ⏳ | Planned |

---

## 📁 4. Documentation Layer: Storing learnings and logs

| Code | File/Folder | Purpose | Status | Date |
|------|-------------|---------|--------|------|
| SDF-DOC-01 | `/Logs/YYYY-MM-DD/` | Daily logs | ⏳ | Planned |
| SDF-DOC-02 | `/Reports/Performance/` | Performance reports | ⏳ | Planned |
| SDF-DOC-03 | `/Learnings/Keywords.md` | Glossary of learned terms | ⏳ | Planned |
| SDF-DOC-04 | `/Timeline.md` | Learning timeline | ⏳ | Planned |
| SDF-DOC-05 | `/README.md` | Overview of SDF | ✅ | 2025-10-29 |

---

## 🧠 5. Mastery Layer: Teaching and legacy

| Code | Task | Purpose | Status | Date |
|------|------|---------|--------|------|
| SDF-MAS-01 | Write and run own scripts | Build confidence and skill | ⏳ | Planned |
| SDF-MAS-02 | Create Markdown guides | Teach others | ⏳ | Planned |
| SDF-MAS-03 | Publish on GitHub | Share publicly | ⏳ | Planned |
| SDF-MAS-04 | Campaign-ready summary | Stewardship continuity | ⏳ | Planned |

---

## 🔍 Audit Logging Setup

Each completed module will be logged in `/AuditLog/YYYY-MM-DD.md` with:

- **Code:** Module code (e.g., `SDF-OBS-01`)
- **Action:** What was done or learned
- **Date:** Timestamp
- **Reflection:** Personal insight or challenge
- **Next Step:** What comes next

Example:
```markdown
## Audit Entry: 2025-10-29
- Code: SDF-INIT-01
- Action: Explored Task Manager
- Reflection: Learned how to sort processes by CPU usage
- Next Step: Try PowerShell `Get-Process`

