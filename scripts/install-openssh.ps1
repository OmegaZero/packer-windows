$ErrorActionPreference = 'stop'

try {
    Write-Output "Installing OpenSSH server..."
    Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
    # Set-Service -Name sshd -StartupType Automatic
    Write-Output "OpenSSH server installed successfully!"
}
catch {
    Write-Output "Unable to install OpenSSH server. Error: "
    Write-Output $_.Exception.Message
}