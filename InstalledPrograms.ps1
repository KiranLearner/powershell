# Get the list of installed programs from the registry
$programs = Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion, Publisher, InstallDate | Where-Object { $_.DisplayName -ne $null }

# Display the list of installed programs
Write-Host "Installed Programs:"
$programs | Format-Table -AutoSize
