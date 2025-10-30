param (
    [string]$LoanID = "L-0001",
    [string]$FinalDate = "2025-11-05",
    [string]$FinalNote = "Loan fully repaid and closed"
)

$jsonPath = "loans\$LoanID\loan.json"
$closurePath = "loans\$LoanID\closure.md"

if (-Not (Test-Path $jsonPath)) {
    Write-Host "Loan record not found for $LoanID"
    return
}

# Update loan.json with closure note
$loanData = Get-Content $jsonPath | ConvertFrom-Json
$loanData.closed = $true
$loanData.closed_on = $FinalDate
$loanData.closure_note = $FinalNote
$loanData | ConvertTo-Json -Depth 3 | Set-Content $jsonPath

# Create closure.md
@"
# Loan Closure — $LoanID

This loan has been fully repaid and ethically closed on $FinalDate.

**Closure Note**: $FinalNote  
**Loan ID**: $LoanID  
**Lender**: $($loanData.lender_name)  
**Amount**: ৳$($loanData.amount)

This closure affirms our commitment to stewardship continuity and constitutional transparency.

— Stewardship Team
"@ | Set-Content $closurePath

Write-Host "Loan $LoanID finalized and closure.md created."
