

# SDF-OBS-01 — get-process.ps1

**Purpose:**  
To observe running processes and identify high CPU usage using PowerShell.

---

## 🧭 Script Example

```powershell
Get-Process | Sort-Object CPU -Descending | Select-Object -First 10
```

---

## 📊 What It Shows

- Process name  
- CPU time used  
- Memory footprint  
- ID and status

---

## 🧠 Reflection

- Which process consumed the most CPU?  
- Was it expected or surprising?

---

## 🔗 Related Modules

- [SDF-INIT-01 — Task Manager](../Initiation/SDF-INIT-01.md)  
- [SDF-REP-01 — Export-Csv](../Reporting/SDF-REP-01.md)

---

