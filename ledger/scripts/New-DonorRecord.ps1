param (
    [string]$DonorID = "D-0002",
    [string]$DonorName = "Name Placeholder",
    [string]$DonationDate = "2025-10-20",
    [int]$Amount = 2000,
    [string]$Channel = "Bank Transfer",
    [string]$Purpose = "Quran printing for shelter schools",
    [string]$Reference = "TXN-D-0001-BANK-20251020"
)

$folderPath = "$env:USERPROFILE\source\repos\mj-ahmad\ledger\donors\$DonorID"
New-Item -ItemType Directory -Path $folderPath -Force | Out-Null

# agreement.md
@"
# Donor Agreement — $DonorID

We, the stewardship team, affirm that $DonorName has contributed ৳$Amount to the Quraner Fariwala campaign with dignity and trust.

- **Donor Name**: $DonorName
- **Date**: $DonationDate
- **Channel**: $Channel
- **Purpose**: $Purpose

This agreement honors the donor’s constitutional role in sustaining truth.
"@ | Set-Content "$folderPath\agreement.md"

# gratitude.md
@"
# Gratitude Note — $DonorID

Dear $DonorName,

Your contribution is not just financial — it is constitutional. You have helped preserve a sanctuary of truth, and we hold your trust with reverence.

With restraint and gratitude,  
— Stewardship Team
"@ | Set-Content "$folderPath\gratitude.md"

# ledger.md
@"
# Ledger — Donor $DonorID

| Date       | Amount | Channel       | Purpose                            |
|------------|--------|---------------|------------------------------------|
| $DonationDate | ৳$Amount | $Channel | $Purpose |
"@ | Set-Content "$folderPath\ledger.md"

# receipt.md
@"
# Receipt — Donor $DonorID

**Date**: $DonationDate  
**Amount**: ৳$Amount  
**Channel**: $Channel  
**Reference**: $Reference

This receipt confirms your constitutional contribution to Quraner Fariwala. Stewardship continues because of you.
"@ | Set-Content "$folderPath\receipt.md"

# confirmation-D-[ID].md
@"
Subject: Your Contribution Has Been Received — Stewardship $DonorID

Dear $DonorName,

We have respectfully received your contribution of ৳$Amount for the Quraner Fariwala campaign.

**Reference**: $Reference  
**Channel**: $Channel  
**Date**: $DonationDate

Your contribution is now part of our inheritable record. Stewardship continues because of you.

With gratitude,  
— Stewardship Team
"@ | Set-Content "$folderPath\confirmation-$DonorID.md"

# trust-briefing-D-[ID].md
@"
Subject: About Our Institution — Your Contribution Is a Constitutional Thread

Dear $DonorName,

The institution you support is a constitutional sanctuary. We uphold:

- **Transparency**: Every donation is recorded in child-readable, audit-traceable format.
- **Inheritance**: Your contribution is part of our legacy.
- **Restraint & Dignity**: We document with clarity, not excess.

You may view your record here:  
📂 `mjahmad-protocol/donors/$DonorID/`

With respect,  
— Stewardship Team
"@ | Set-Content "$folderPath\trust-briefing-$DonorID.md"

# donor.json
$donorObject = @{
    donor_id = $DonorID
    name = $DonorName
    date = $DonationDate
    amount = $Amount
    channel = $Channel
    purpose = $Purpose
    reference = $Reference
    notes = "Donated during October campaign"
}
$donorObject | ConvertTo-Json -Depth 3 | Set-Content "$folderPath\donor.json"


