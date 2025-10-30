

# SDF-REP-04 — ConvertTo-Json

**Purpose:**  
To convert PowerShell output into JSON format for structured data exchange.

---

## 🧭 Script Example

```powershell
Get-ComputerInfo | ConvertTo-Json | Out-File "system-info.json"
```

---

## 📁 Output

- File: `system-info.json`  
- Format: JSON  
- Use: API-ready, machine-readable format

---

## 🧠 Reflection

- Was the JSON structure easy to understand?  
- Could it be used in other systems or tools?

---

## 🔗 Related Modules

- [SDF-OBS-05 — get-osinfo.ps1](../Observation/SDF-OBS-05.md)



---
