# SDF-OBS-02 — get-service.ps1

**Purpose:**  
To list all Windows services and check their current status.

---

## 🧭 Script Example

```powershell
Get-Service | Where-Object {$_.Status -eq 'Running'}
```

---

## 📊 What It Shows

- Service name  
- Display name  
- Status (Running, Stopped, Paused)  
- Dependent services

---

## 🧠 Reflection

- Did you find any unknown services running?  
- Are all critical services active?

---

## 🔗 Related Modules

- [SDF-INIT-05 — PowerShell Basics](../Initiation/SDF-INIT-05.md)

