param (
    [string]$LoanID = "L-0001",
    [string]$Date = "2025-10-25",
    [int]$Amount = 500,
    [string]$Channel = "bKash",
    [string]$Notes = "Partial repayment"
)

$ledgerPath = "loans\$LoanID\repayment-ledger.md"

if (-Not (Test-Path $ledgerPath)) {
    Write-Host "Ledger not found for $LoanID"
    return
}

$entry = "| $Date | ৳$Amount | $Channel | $Notes |"
Add-Content -Path $ledgerPath -Value $entry
Write-Host "Repayment entry added to $LoanID ledger."
