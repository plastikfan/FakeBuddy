using namespace Microsoft.PowerShell.Commands
[CmdletBinding()]
param(
  [ValidateSet("CurrentUser", "AllUsers")]
  $Scope = "CurrentUser"
)
Write-Host "=== RUNNING BOOTSTRAP ==="
[ModuleSpecification[]]$RequiredModules = Import-LocalizedData -BaseDirectory $PSScriptRoot `
  -FileName dependencies.psd1;
$Policy = (Get-PSRepository PSGallery).InstallationPolicy;
Set-PSRepository PSGallery -InstallationPolicy Trusted;
try {
  $RequiredModules | Install-Module -Scope $Scope -Repository PSGallery -SkipPublisherCheck -Verbose
}
finally {
  Set-PSRepository PSGallery -InstallationPolicy $Policy
}
$RequiredModules | Import-Module -Force

Push-Location .\Elizium.FakeBuddy

# Do build & test
#
Write-Host "=== RUNNING BUILD ==="
Invoke-Build Build

Pop-Location
