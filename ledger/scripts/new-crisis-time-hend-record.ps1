param (
    [string]$LoanID = "L-0002",
    [string]$LenderName = "Name Placeholder",
    [int]$Amount = 1000,
    [string]$IssuedDate = "2025-10-20",
    [string]$Deadline = "2025-11-05",
    [string]$Purpose = "Emergency campaign continuity",
    [string]$GiftType = "Hand-bound campaign documentation"
)

$folderPath = "$env:USERPROFILE\source\repos\mj-ahmad\ledger\crisis-time-hend\$LoanID"
New-Item -ItemType Directory -Path $folderPath -Force | Out-Null

# agreement.md
@"
# Micro-loan Agreement — $LoanID

We, the stewardship team, affirm that $LenderName has extended a short-term loan of ৳$Amount to support constitutional continuity during a financial crisis.

- **Loan ID**: $LoanID
- **Amount**: ৳$Amount
- **Date Issued**: $IssuedDate
- **Repayment Deadline**: $Deadline
- **Purpose**: $Purpose

This agreement honors the lender’s trust and affirms our commitment to ethical repayment and transparent documentation.
"@ | Set-Content "$folderPath\agreement.md"

# gratitude.md
@"
# Gratitude Note — $LoanID

Dear $LenderName,

Your timely support during our moment of constraint is not just financial — it is constitutional. You have helped sustain a sanctuary of truth, and we hold your trust with reverence.

With restraint and gratitude,  
— Stewardship Team
"@ | Set-Content "$folderPath\gratitude.md"

# repayment-ledger.md
@"
# Repayment Ledger — $LoanID

| Date       | Amount | Channel | Notes           |
|------------|--------|---------|-----------------|
| TBD        | TBD    | TBD     | To be recorded  |
"@ | Set-Content "$folderPath\repayment-ledger.md"

# gift-note.md
@"
# Appreciation Gift — $LoanID

Dear $LenderName,

As a token of our gratitude, we have sent you a $GiftType — a symbol of stewardship and legacy.

This gift is not transactional — it is constitutional. It honors your role in sustaining truth.

— Stewardship Team
"@ | Set-Content "$folderPath\gift-note.md"

# trust-briefing.md
@"
# Institutional Briefing — $LoanID

Dear $LenderName,

You supported an institution that treats every act — even emergency borrowing — as a constitutional event. We uphold:

- **Transparency**: Every loan is documented in child-readable, audit-traceable format.
- **Restraint**: We borrow only what is necessary, and repay with dignity.
- **Legacy**: Your support is part of our inheritable record.

You may view your stewardship record here:  
📂 `mjahmad-protocol/loans/$LoanID/`

With respect,  
— Stewardship Team
"@ | Set-Content "$folderPath\trust-briefing.md"

# loan.json
$loanObject = @{
    loan_id     = $LoanID
    lender_name = $LenderName
    amount      = $Amount
    issued      = $IssuedDate
    deadline    = $Deadline
    purpose     = $Purpose
    repayment   = @()
    gift_sent   = $true
    gift_type   = $GiftType
}
$loanObject | ConvertTo-Json -Depth 3 | Set-Content "$folderPath\loan.json"

