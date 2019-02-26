
$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://files.freeswitch.org/windows/installer/x64/FreeSWITCH-1.8.5-x64-Release.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url64bit      = $url64

  softwareName  = 'freeswitch*'

  checksum64    = 'D1E525FB228B17621434F101F6DB4C850C0208FC0816A790AEECFAA4DAF67296'
  checksumType64= 'sha256'

  silentArgs    = "/quiet"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs