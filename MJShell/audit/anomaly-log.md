# ⚠️ MJShell Anomaly Log

This file records all flagged anomalies during campaign execution — including duplicate entries, missing data, suspicious behavior, and potential abuse. Each entry is timestamped and scoped for ethical response.

---

## 🚨 [2025-10-20 12:05] — Duplicate Receipt Detected

**Script:** Detect-Anomaly.ps1  
**Issue:** Receipt ID R-1002 appears twice in `receipt-linkage.json`  
**Impact:** May cause double-counting of delivery  
**Action Taken:** Entry flagged; steward notified; validation pending

---

## 🚨 [2025-10-20 12:07] — Missing Donor Email

**Script:** Track-DonorFlow.ps1  
**Issue:** Donor D-003 has no contact_email in profile  
**Impact:** Receipt dispatch may fail  
**Action Taken:** Logged; fallback to manual confirmation

---

## 🚨 [2025-10-20 12:10] — Suspicious Funding Spike

**Script:** Track-DonorFlow.ps1  
**Issue:** 1,000,000 BDT added without donor ID  
**Impact:** Untraceable contribution  
**Action Taken:** Entry quarantined; steward review required

---

## 🚨 [2025-10-20 12:12] — Social Push Mismatch

**Script:** Sync-SocialPush.ps1  
**Issue:** Content index references missing image file  
**Impact:** Broken outreach post  
**Action Taken:** Post skipped; log updated; resource team notified

---

## 🚨 [2025-10-20 12:15] — Unauthorized Script Execution

**Script:** Unknown  
**Issue:** Script `Delete-Donor.ps1` attempted without manifest entry  
**Impact:** Potential data loss  
**Action Taken:** Execution blocked; anomaly logged; steward alerted

