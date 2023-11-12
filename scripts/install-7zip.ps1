$ErrorActionPreference = 'stop'

try {
    Write-Output "Installing 7-Zip Powershell Module..."
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
    Set-PSRepository -Name 'PSGallery' -SourceLocation 'https://www.powershellgallery.com/api/v2' -InstallationPolicy Trusted
    Install-Module -Name 7Zip4PowerShell -Force
    Write-Output '7-Zip Powershell Module installed successfully!'
}
catch {
    Write-Output "Unable to install 7-Zip Powershell Module. Error: "
    Write-Output $_.Exception.Message
}