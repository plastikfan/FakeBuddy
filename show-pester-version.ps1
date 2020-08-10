

# Write-Host "====================================="
# $pm = get-module -Name PSScriptAnalyzer
# Write-Host ">>> Showing PSScriptAnalyzer Version $($pm.version.ToString()) >>>"

$theme = Get-KrayolaTheme
$line = @(
  @('Message', 'i am stumped'),
  @('Complaint', 'give us a bleeding break')
)
Write-ThemedPairsInColour -Pairs $line -Theme $theme
