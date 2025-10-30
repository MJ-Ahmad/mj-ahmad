# SystemOps Documentation Framework (SDF) — Glossary of Learned Terms

**Steward:** MJ Ahmad  
**Purpose:** To define and preserve key terms, commands, and concepts used in system observation and documentation.

---

## 🧠 System Dashboards

- **Task Manager:** A built-in Windows tool to view running processes, CPU/RAM usage, and startup apps.
- **Performance Monitor:** A tool to observe live system performance through graphs and counters.
- **Event Viewer:** A log viewer that records system events, warnings, and errors.
- **Sysinternals Tools:** Advanced utilities like Process Explorer and Autoruns for deep system inspection.

---

## ⚙️ PowerShell Commands

- `Get-Process`: Lists all running processes.
- `Sort-Object CPU`: Sorts processes by CPU usage.
- `Get-Service`: Lists all Windows services.
- `Where-Object {$_.Status -eq 'Running'}`: Filters only running services.
- `Get-EventLog`: Retrieves system or application logs.
- `Get-Counter`: Shows live performance counters.
- `Get-WmiObject Win32_OperatingSystem`: Displays system information.
- `Export-Csv`: Saves output as a CSV file.
- `Out-File`: Saves output as a text file.
- `ConvertTo-Json`: Converts output to JSON format.
- `Send-MailMessage`: Sends output via email.

---

## 📁 Documentation Concepts

- **Child-readable:** Simple, clear, and understandable by young learners.
- **Audit-traceable:** Every action is logged with time, purpose, and reflection.
- **Ethically inheritable:** Designed to be passed on with dignity and clarity.

---

## 🪞 Stewardship Roles

- **Observer:** Watches system behavior.
- **Reporter:** Summarizes findings.
- **Archivist:** Stores logs and learnings.
- **Teacher:** Prepares guides for others.
- **Campaigner:** Builds summaries for outreach.


