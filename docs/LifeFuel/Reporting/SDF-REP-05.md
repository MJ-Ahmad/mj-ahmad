



# SDF-REP-05 — Send-MailMessage

**Purpose:**  
To send PowerShell-generated reports via email for remote sharing or alerts.

---

## 🧭 Script Example

```powershell
Send-MailMessage -To "recipient@example.com" -From "me@example.com" -Subject "CPU Report" -Body "See attached report" -SmtpServer "smtp.example.com" -Attachments "cpu-usage.csv"
```

---

## 📁 Output

- Format: Email with attachment  
- Use: Remote delivery of audit or performance reports

---

## 🧠 Reflection

- Was the email received successfully?  
- Did the attachment open correctly?

---

## 🔗 Related Modules

- [SDF-REP-01 — Export-Csv](SDF-REP-01.md)  
- [SDF-MAS-03 — Publish on GitHub](../Mastery/SDF-MAS-03.md)
