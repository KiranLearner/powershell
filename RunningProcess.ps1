# retrieve info about running processes in the system

#make a variable name processes to store the runnin
#processes
$processes = Get-process

# display the number of processes
$TotalProcesses = $processes.Count 
write-output "total number of processes : $totalprocesses"

#display the list of processes with their names and IDs
write-output "list of processes:"
foreach ($process in $processes){
     write-output "$($process.Name) (ID :$($process.ID))"

}
