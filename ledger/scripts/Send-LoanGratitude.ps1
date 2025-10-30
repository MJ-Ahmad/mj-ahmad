param (
    [string]$LoanID = "L-0001",
    [string]$LenderName = "Name Placeholder",
    [string]$Date = "2025-10-25",
    [int]$Amount = 500
)

$gratitudePath = "loans\$LoanID\gratitude-$Date.md"

@"
# Gratitude Note — $LoanID

Dear $LenderName,

We have received your support of ৳$Amount on $Date. This repayment is not just financial — it is constitutional. It affirms your trust and sustains our stewardship continuity.

Your contribution is now part of our inheritable record.

With reverence,  
— Stewardship Team
"@ | Set-Content $gratitudePath

Write-Host "Gratitude note created for $LoanID on $Date."
