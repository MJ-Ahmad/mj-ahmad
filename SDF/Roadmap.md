
# SystemOps Documentation Framework (SDF)
**Initiated on:** 2025-10-29  
**Steward:** MJ Ahmad  
**Purpose:** To master Windows system observation, reporting, and documentation using PowerShell in a child-readable, audit-traceable, and ethically inheritable format.

---

## 🧠 1. Initiation Layer: শব্দ ও কাঠামো চেনা

| Code | Topic | Goal | Status | Date |
|------|-------|------|--------|------|
| 1.1 | Task Manager | Understand running processes and resource usage | ✅ | 2025-10-29 |
| 1.2 | Performance Monitor | Monitor CPU, RAM, Disk, Network live | ⏳ | Planned |
| 1.3 | Event Viewer | View system logs and errors | ⏳ | Planned |
| 1.4 | Sysinternals Tools | Explore Process Explorer, Autoruns | ⏳ | Planned |
| 1.5 | PowerShell Basics | Learn `Get-Process`, `Get-Service`, etc. | ⏳ | Planned |

---

## 📊 2. Observation Layer: PowerShell দিয়ে পর্যবেক্ষণ

| Code | Script | Purpose | Status | Date |
|------|--------|---------|--------|------|
| 2.1 | `Get-Process | Sort-Object CPU -Descending` | Identify CPU-heavy processes | ⏳ | Planned |
| 2.2 | `Get-Service | Where-Object {$_.Status -eq 'Running'}` | Filter running services | ⏳ | Planned |
| 2.3 | `Get-EventLog -LogName System -Newest 50` | View recent system logs | ⏳ | Planned |
| 2.4 | `Get-Counter` | Live performance counters | ⏳ | Planned |
| 2.5 | `Get-WmiObject Win32_OperatingSystem` | System info | ⏳ | Planned |

---

## 📜 3. Reporting Layer: child-readable রিপোর্ট তৈরি

| Code | Method | Output Format | Status | Date |
|------|--------|---------------|--------|------|
| 3.1 | `Export-Csv` | CSV report | ⏳ | Planned |
| 3.2 | `Out-File` | TXT report | ⏳ | Planned |
| 3.3 | Markdown Template | Summary in `.md` | ⏳ | Planned |
| 3.4 | `ConvertTo-Json` | JSON report | ⏳ | Planned |
| 3.5 | `Send-MailMessage` | Email delivery (optional) | ⏳ | Planned |

---

## 📁 4. Documentation Layer: শেখা ও সংরক্ষণ

| Code | File/Folder | Purpose | Status | Date |
|------|-------------|---------|--------|------|
| 4.1 | `/SDF/Logs/YYYY-MM-DD/` | Daily logs | ⏳ | Planned |
| 4.2 | `/SDF/Reports/Performance/` | Performance reports | ⏳ | Planned |
| 4.3 | `/SDF/Learnings/Keywords.md` | Glossary of learned terms | ⏳ | Planned |
| 4.4 | `/SDF/Timeline.md` | Learning timeline | ⏳ | Planned |
| 4.5 | `/SDF/README.md` | Overview of SDF | ⏳ | Planned |

---

## 🧠 5. Mastery Layer: নিজে শেখা, অন্যকে শেখানো

| Code | Task | Purpose | Status | Date |
|------|------|---------|--------|------|
| 5.1 | Write and run own scripts | Build confidence | ⏳ | Planned |
| 5.2 | Create Markdown guides | Teach others | ⏳ | Planned |
| 5.3 | Publish on GitHub | Share publicly | ⏳ | Planned |
| 5.4 | Campaign-ready summary | Stewardship continuity | ⏳ | Planned |

---

## 🔍 Audit Log Setup

Every completed item will be logged in `/SDF/AuditLog/YYYY-MM-DD.md` with:
- Code (e.g., `2.1`)
- Description of what was done
- Date and time
- Any issues or reflections
- Screenshot or output summary (optional)

Example entry:
```markdown
## Audit Entry: 2025-10-29
- **Code:** 1.1
- **Action:** Explored Task Manager, identified 5 high-CPU processes
- **Reflection:** Learned how to sort by CPU and memory
- **Next Step:** Try PowerShell `Get-Process`
```

---

## 🌱 Final Note
This framework is not just technical — it is ethical, inheritable, and beautiful. Every step is a seed of clarity. Every log is a leaf of legacy.

```

---

## 📁 ফোল্ডার স্ট্রাকচার (File Tree)

```markdown
SDF/
├── README.md
├── Roadmap.md
├── Timeline.md
├── Learnings/
│   └── Keywords.md
├── Logs/
│   └── 2025-10-29/
│       └── taskmanager.log
├── Reports/
│   └── Performance/
│       └── cpu-usage-2025-10-29.csv
├── AuditLog/
│   └── 2025-10-29.md
├── Scripts/
│   └── get-process.ps1
│   └── get-service.ps1

```

