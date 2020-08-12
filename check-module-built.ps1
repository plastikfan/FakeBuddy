
Push-Location .\Elizium.FakeBuddy

$folderExists = Test-Path -Path .\Output\Elizium.FakeBuddy
$defintionExists = Test-Path -Path .\Output\Elizium.FakeBuddy\Elizium.FakeBuddy.psd1

Write-Host "MODULE FOLDER EXISTS: $folderExists (path: $(Convert-Path -Path .\Output\Elizium.FakeBuddy))";
Write-Host "MODULE DEFINITION EXISTS: $defintionExists (path $(Convert-Path -Path .\Output\Elizium.FakeBuddy\Elizium.FakeBuddy.psd1))";

 $env:PSModulePath -split ';'

Pop-Location
