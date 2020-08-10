Describe 'join-AllSchemas' {
  BeforeAll {
    # Get-Module Elizium.FakeBuddy | Remove-Module
    # Import-Module .\Output\Elizium.FakeBuddy\Elizium.FakeBuddy.psm1 `
    #   -ErrorAction 'stop' -DisableNameChecking

    $resolved = Resolve-Path -Path '.\';
    Write-Host "RESOLVED PATH: $resolved";

    . './Tests/Data/setup-schemes.data.ps1';
  }

  Context 'Given: a single item scheme hashtable' {
    It 'Should: convert to json' {
      [System.Collections.Hashtable]$schemes = @{
        'Cyberdyne' = $cyberdyneJson;
      }

      $jsonSchemes = join-AllSchemas -Schemes $schemes;

      $result = $jsonSchemes | ConvertFrom-Json
      $result.schemes | Should -Not -BeNullOrEmpty;
      $result.schemes.Count | Should -Be 1;
      $result.schemes[0].name | Should -Be "Cyberdyne";
    }
  }

  Context 'Given: a mutiple (x2) item scheme hashtable' {
    It 'Should: convert to json' {
      [System.Collections.Hashtable]$schemes = @{
        'Cyberdyne'        = $cyberdyneJson;
        'Blueberry Scheme' = $bananaBlueberryJson;
      }

      $jsonSchemes = join-AllSchemas -Schemes $schemes;

      $result = $jsonSchemes | ConvertFrom-Json
      $result.schemes | Should -Not -BeNullOrEmpty;
      $result.schemes.Count | Should -Be 2;
    }
  }
}
