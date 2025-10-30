

# SDF-REP-02 — Out-File

**Purpose:**  
To save PowerShell output as a plain text file for documentation or review.

---

## 🧭 Script Example

```powershell
Get-Service | Out-File -FilePath "services.txt"
```

---

## 📁 Output

- File: `services.txt`  
- Format: Plain text  
- Use: Readable log of service status

---

## 🧠 Reflection

- Was the text file easier to share than CSV?  
- Did it preserve formatting clearly?

---

## 🔗 Related Modules

- [SDF-OBS-02 — get-service.ps1](../Observation/SDF-OBS-02.md)



---
