#get operating system info
$OsInfo = get-WmiObject Win32_OperatingSystem

#get system architect info
$systemInfo = get-wmiObject Win32_computerSystem

#get computer name
$computerName = $env:COMPUTERNAME

#get logged-in user
$user = $env:USERNAME

#calculate the system uptime
$lastBootUpTime = [Management.ManagementDateTimeConverter]::ToDateTime($osInfo.LastBootUpTime)
$uptime = (get-date) - $lastBootUpTime

#Display system information 
write-host "computer Name : $computerName"
write-host "logged-in User: $user "
write-host "operating system : $($osInfo.Caption) $($OsInfo.Version)"
write-host "system Architecture : $($systemInfo.systemType)"
write-host "system Uptime : $($uptime.days) days, $($uptime.hours) hours,$($uptime.Minutes) minutes"