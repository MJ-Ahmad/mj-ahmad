
# SDF-OBS-05 — get-osinfo.ps1

**Purpose:**  
To view system information including OS version, architecture, and hardware specs.

---

## 🧭 Script Example

```powershell
Get-ComputerInfo | Select-Object WindowsProductName, OsArchitecture, CsTotalPhysicalMemory
```

---

## 📊 What It Shows

- Windows version  
- System architecture (x64, ARM)  
- Total RAM  
- BIOS and firmware details

---

## 🧠 Reflection

- Is your system optimized for your workload?  
- Did you discover any outdated components?

---

## 🔗 Related Modules

- [SDF-REP-04 — ConvertTo-Json](../Reporting/SDF-REP-04.md)
