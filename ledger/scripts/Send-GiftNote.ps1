param (
    [string]$LoanID = "L-0001",
    [string]$LenderName = "Name Placeholder",
    [string]$GiftType = "Hand-bound campaign documentation",
    [string]$Date = "2025-11-05"
)

$giftPath = "loans\$LoanID\gift-note-$Date.md"

@"
# Appreciation Gift — $LoanID

Dear $LenderName,

As a token of our gratitude, we have sent you a $GiftType — a symbol of stewardship and legacy.

This gift is not transactional — it is constitutional. It honors your role in sustaining truth.

— Stewardship Team
"@ | Set-Content $giftPath

Write-Host "Gift note created for $LoanID on $Date."
