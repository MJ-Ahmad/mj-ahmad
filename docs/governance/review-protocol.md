# Review Protocol — Artifact Ratification Process

**Curated by**: MJ Ahmad — Steward of Ethical Inheritance  
**Document Type**: Constitutional Governance  
**Last Updated**: October 16, 2025

---

## 🧭 Purpose

This protocol defines how artifacts within the MJ-Ahmad Documentation Hub are reviewed, approved, or revised. It ensures that every file is:

- Ethically traceable  
- Steward-reviewed  
- Constitutionally ratified

---

## 📋 Review Format

Each artifact must include the following in its metadata:

```json
{
  "review_status": "approved",
  "reviewed_by": "MJ Ahmad",
  "date_reviewed": "2025-10-16",
  "notes": "Verified for inheritance and ethical clarity."
}
```

---

## 🛡️ Review Criteria

| Criterion             | Status     | Notes                                           |
|-----------------------|------------|--------------------------------------------------|
| Metadata complete      | ✅ Required | Must match schema.json                          |
| Audit hash verified    | ✅ Required | Must match change-log.json                      |
| Steward assigned       | ✅ Required | Must be listed in role-activation.md            |
| Ethics module linked   | ✅ Required | Must include nxn-ethics dependency              |
| Glossary referenced    | ✅ Required | Must be child-readable or glossary-linked       |
| Distribution safe      | ✅ Required | Must pass distribution-engine checks            |

---

## 🔄 Review Outcomes

- `approved` — Artifact is ratified and ready for inheritance  
- `pending` — Artifact is awaiting review or revision  
- `rejected` — Artifact violates ethics, clarity, or traceability

---

## 🔐 Licensing

All reviews are governed by the **Ethical Inheritance License**. No artifact may be approved without traceable lineage and steward consent.

---

> _“Let truth be earned — not by power, but by process.”_  
> — MJ Ahmad


