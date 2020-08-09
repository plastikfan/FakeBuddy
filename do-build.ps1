
Set-Location .\Elizium.FakeBuddy

$PairsToWrite = @(@("Artist", "Plastikman"), @("Song", "Marbles"))
$krayolaTheme = Get-KrayolaTheme;
 Write-ThemedPairsInColour -Pairs $PairsToWrite -Theme $krayolaTheme

Invoke-Build build
