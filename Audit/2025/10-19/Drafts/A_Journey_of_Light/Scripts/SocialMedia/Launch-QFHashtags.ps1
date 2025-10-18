# Launch-QFHashtags.ps1
# Quraner Fariwala – Hashtag Deployment Script (Jan 2026 Campaign)
# Author: MJ Ahmad
# Purpose: Deploy campaign hashtags across captions, changelogs, and donor logs

# Define hashtag sets
$primaryTags = "#QuranerFariwala #PrintTheQuran #OneQuranOneLife #JourneyOfLight #FaithInAction"
$missionTags = "#PreserveTheQuran #EmpowerEducation #QuranForOrphans #QuranForBangladesh #QuranicJustice #IslamicHeritage"
$donorTags   = "#SponsorAQuran #GiveForGood #RamadanReady #LegacyDonation #SadaqahJariyah #BeTheLight"
$globalTags  = "#GlobalMuslimUnity #SupportIslamicEducation #FaithBeyondBorders #MuslimWorldTogether #QuranCampaign2026"
$auditTags   = "#AuditReadyImpact #DonorReceipts #ChangelogForJustice #InheritableMission #StewardshipMatters"

# Combine all tags
$allTags = "$primaryTags `n$missionTags `n$donorTags `n$globalTags `n$auditTags"

# Output to console
Write-Host "`n🟢 Quraner Fariwala Hashtag Launcher Activated"
Write-Host "`n📌 Deployed Hashtags:`n"
Write-Host $allTags

# Optional: Save to changelog
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
$changelogPath = "E:\mj-ahmad\Areas-of-Involvement\QuranerFariwala\A_Journey_of_Light\Logs\Changelog_HashtagDeployments.txt"
Add-Content -Path $changelogPath -Value "`n[$timestamp] Hashtags Deployed:`n$allTags"

# Optional: Copy to clipboard for manual pasting
Set-Clipboard -Value $allTags
Write-Host "`n📋 Hashtags copied to clipboard for manual use."

# Optional: Confirmation
Write-Host "`n✅ Deployment complete. Ready for caption integration and donor outreach."
