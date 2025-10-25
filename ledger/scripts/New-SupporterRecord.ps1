param (
    [string]$SupporterID = "0002",
    [string]$SupporterName = "Name Placeholder",
    [string]$JoinDate = "2025-10-20",
    [string]$SupportType = "Monthly Contribution",
    [int]$Amount = 500,
    [string]$Channel = "bKash",
    [string]$Purpose = "Quran distribution in rural shelters",
    [string]$Reference = "TXN-0001-BKASH-20251020"
)

$folderPath = "$env:USERPROFILE\source\repos\mj-ahmad\ledger\supporters\$SupporterID"
New-Item -ItemType Directory -Path $folderPath -Force | Out-Null

# agreement.md
@"
# Supporter Agreement — #$SupporterID

We, the stewardship team, affirm that Supporter #$SupporterID has joined the Quraner Fariwala campaign with dignity and trust.

- **Supporter Name**: $SupporterName
- **Joined On**: $JoinDate
- **Support Type**: $SupportType
- **Amount**: ৳$Amount
- **Purpose**: $Purpose

By this agreement, we honor their support as a constitutional act of care.
"@ | Set-Content "$folderPath\agreement.md"

# gratitude.md
@"
# Gratitude Note — #$SupporterID

Dear $SupporterName,

Your support sustains not just a campaign, but a sanctuary of truth. Every taka you contribute becomes a verse carried, a child protected, a legacy preserved.

With restraint and reverence,  
— Stewardship Team
"@ | Set-Content "$folderPath\gratitude.md"

# ledger.md
@"
# Ledger — Supporter #$SupporterID

| Date       | Type        | Amount | Channel | Notes           |
|------------|-------------|--------|---------|-----------------|
| $JoinDate | Contribution| ৳$Amount | $Channel | Initial support |
"@ | Set-Content "$folderPath\ledger.md"

# receipt.md
@"
# Receipt — Supporter #$SupporterID

**Date**: $JoinDate  
**Amount**: ৳$Amount  
**Channel**: $Channel  
**Reference**: $Reference

This receipt confirms your constitutional contribution to Quraner Fariwala. Stewardship continues because of you.
"@ | Set-Content "$folderPath\receipt.md"

# confirmation-[ID].md
@"
Subject: Your Contribution Has Been Received — Stewardship #$SupporterID

Dear $SupporterName,

We have respectfully received your contribution of ৳$Amount as part of the October 2025 campaign for rural Quran distribution.

**Reference**: $Reference  
**Channel**: $Channel  
**Date**: $JoinDate

Your contribution is not merely financial — it is a constitutional act of care. It sustains a sanctuary of truth, and every step is documented in child-readable, inheritable form.

With gratitude and reverence,  
— Stewardship Team  
Quraner Fariwala Campaign
"@ | Set-Content "$folderPath\confirmation-$SupporterID.md"

# trust-briefing-[ID].md
@"
Subject: About Our Institution — Your Contribution Is a Constitutional Thread

Dear $SupporterName,

The institution you support is not just a campaign — it is a constitutional sanctuary. We uphold:

- **Transparency**: Every contribution is recorded in ledger.md and receipt.md in child-readable, audit-traceable format.
- **Inheritance**: All files are structured for future stewards to understand your role in sustaining truth.
- **Restraint & Dignity**: Our documentation and campaign artifacts are crafted with aesthetic clarity and ethical tone.

Your support is a legacy. You are part of a stewardship system that honors every act with reverence and traceability.

You may view your constitutional record here:  
📂 `mjahmad-protocol/supporters/$SupporterID/`

With respect,  
— Stewardship Team  
Quraner Fariwala Campaign
"@ | Set-Content "$folderPath\trust-briefing-$SupporterID.md"

# supporter.json
$supporterObject = @{
    supporter_id = $SupporterID
    name = $SupporterName
    joined = $JoinDate
    support_type = $SupportType
    amount = $Amount
    channel = $Channel
    purpose = $Purpose
    reference = $Reference
    notes = "Joined during October campaign"
}
$supporterObject | ConvertTo-Json -Depth 3 | Set-Content "$folderPath\supporter.json"

