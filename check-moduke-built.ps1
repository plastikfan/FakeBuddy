
Push-Location .\Elizium.FakeBuddy

$folderExists = Test-Path -Path .\Output\Elizium.FakeBuddy
$defintionExists = Test-Path -Path .\Output\Elizium.FakeBuddy\Elizium.FakeBuddy.psd1

Write-Host "MODULE FOLDER EXISTS: $folderExists";
Write-Host "MODULE DEFINITION EXISTS: $defintionExists";

Pop-Location
