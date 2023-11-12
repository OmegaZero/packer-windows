$ErrorActionPreference = 'stop'

try {
    Write-Output "Installing .NET Framework 4.8..."
    (New-Object System.Net.WebClient).DownloadFile('https://go.microsoft.com/fwlink/?linkid=2088631', 'c:\windows\temp\ndp48-x86-x64-allos-enu.exe')
    Start-Process -FilePath "c:\windows\temp\ndp48-x86-x64-allos-enu.exe" -ArgumentList '/q /norestart /ChainingPackage ADMINDEPLOYMENT' -NoNewWindow -Wait
    Remove-Item "c:\windows\temp\ndp48-x86-x64-allos-enu.exe"
    Write-Output ".NET Framework 4.8 installed successfully!"
}
Catch {
    Write-Output "Unable to install .NET Framework 4.8. Error: "
    Write-Output $_.Exception.Message
}