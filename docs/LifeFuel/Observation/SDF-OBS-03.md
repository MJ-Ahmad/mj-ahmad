
# SDF-OBS-03 — get-eventlog.ps1

**Purpose:**  
To view recent system logs for errors, warnings, and informational events.

---

## 🧭 Script Example

```powershell
Get-EventLog -LogName System -Newest 20
```

---

## 📊 What It Shows

- Event ID  
- Source  
- Entry type (Error, Warning, Information)  
- Timestamp and message

---

## 🧠 Reflection

- Did any errors repeat frequently?  
- What was the most recent warning?

---

## 🔗 Related Modules

- [SDF-INIT-03 — Event Viewer](../Initiation/SDF-INIT-03.md)
