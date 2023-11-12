$ErrorActionPreference = 'stop'

try {
    Write-Output "Installing Chocolatey..."
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    Write-Output "Chocolatey installed successfully!"
}
catch {
    Write-Output "Unable to install Chocolatey. Error: "
    Write-Output $_.Exception.Message
}