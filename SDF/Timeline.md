# SystemOps Documentation Framework (SDF) — Learning Timeline

**Steward:** MJ Ahmad  
**Start Date:** 2025-10-29  
**Purpose:** To track daily learning, reflections, and next steps in mastering system observation and documentation.

---

## 📅 Timeline Entries

### 🟢 2025-10-29
- **Module:** SDF-INIT-01
- **Action:** Explored Task Manager interface
- **Learned:** How to view running processes, sort by CPU and memory usage
- **Reflection:** Realized how many background apps consume resources silently
- **Next Step:** Try PowerShell `Get-Process` and compare results

---

### ⏳ 2025-10-30
- **Module:** SDF-INIT-02
- **Planned:** Open Performance Monitor and observe live CPU/RAM graphs
- **Goal:** Understand system bottlenecks and spikes
- **Next Step:** Log observations and export counters

---

### ⏳ 2025-10-31
- **Module:** SDF-OBS-01
- **Planned:** Run `Get-Process | Sort-Object CPU -Descending`
- **Goal:** Identify top resource-consuming processes via PowerShell
- **Next Step:** Export results to CSV and log in `/Reports/Performance/`

---

## 🔍 Notes
- Each entry is logged with date, module code, action, reflection, and next step.
- Completed entries will be marked ✅ in `Roadmap.md`
- Audit logs stored in `/AuditLog/YYYY-MM-DD.md`



