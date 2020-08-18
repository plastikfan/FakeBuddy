

# Write-Host "====================================="
# $pm = get-module -Name PSScriptAnalyzer
# Write-Host ">>> Showing PSScriptAnalyzer Version $($pm.version.ToString()) >>>"

$theme = Get-KrayolaTheme
$line = @(
  @('Message', 'This is a random change ...'),
  @('Complaint', 'To check that merge with no-ff option is correct')
)
Write-ThemedPairsInColour -Pairs $line -Theme $theme
