$ErrorActionPreference = 'stop'

try {
    Write-Output "Installing Windows Server Core App Compatibility Features..."
    Add-WindowsCapability -Online -Name ServerCore.AppCompatibility~~~~0.0.1.0
    Write-Output "Windows Server Core App Compatibility Features installed successfully!"
}
catch {
    Write-Output "Unable to install Windows Server Core App Compatibility Features. Error: "
    Write-Output $_.Exception.Message
}