

# SDF-REP-01 — Export-Csv

**Purpose:**  
To export PowerShell output into a structured CSV file for reporting and archival.

---

## 🧭 Script Example

```powershell
Get-Process | Sort-Object CPU -Descending | Export-Csv -Path "cpu-usage.csv" -NoTypeInformation
```

---

## 📁 Output

- File: `cpu-usage.csv`  
- Format: Comma-separated values  
- Use: Open in Excel or any spreadsheet tool

---

## 🧠 Reflection

- Did the exported data match your live observation?  
- Was the file readable and reusable?

---

## 🔗 Related Modules

- [SDF-OBS-01 — get-process.ps1](../Observation/SDF-OBS-01.md)  
- [SDF-DOC-02 — Performance Reports](../Reports/Performance/index.md)




---
