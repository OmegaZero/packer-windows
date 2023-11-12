$ErrorActionPreference = 'stop'

if ("$env:PACKER_BUILDER_TYPE" -eq "qemu") {

    Write-Output "Using QEMU"
    try {
        Write-Output "Installing Spice Guest Tools"
        # Install SPICE agent for GUI compatibility",
        (New-Object System.Net.WebClient).DownloadFile('https://www.spice-space.org/download/windows/vdagent/vdagent-win-0.10.0/spice-vdagent-x64-0.10.0.msi', 'spice-vdagent.msi')
        Start-Process -FilePath msiexec -ArgumentList '/i spice-vdagent.msi /qn /norestart' -NoNewWindow -Wait
        Remove-Item spice-vdagent.msi
        Write-Output "Installing Spice Guest Tools installed successfully!"
    }
    Catch {
        Write-Output "Unable to install Spice Guest Tools. Error: "
        Write-Output $_.Exception.Message
    }

    try {
        Write-Output "Installing Spice WebDAV Daemon"
        # Install SPICE WebDAV Daemon for shared clipboard",
        (New-Object System.Net.WebClient).DownloadFile('https://www.spice-space.org/download/windows/spice-webdavd/spice-webdavd-x64-latest.msi', 'spice-webdav.msi')
        Start-Process -FilePath msiexec -ArgumentList '/i spice-webdav.msi /qn /norestart' -NoNewWindow -Wait
        Remove-Item spice-webdav.msi
        Write-Output "Installing Spice Guest Tools installed successfully!"
    }
    Catch {
        Write-Output "Unable to install Spice WebDAV Daemon. Error: "
        Write-Output $_.Exception.Message
    }
}


