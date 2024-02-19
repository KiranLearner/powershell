# store the service name in a variable named nameservice
$NameService = "AppMgmt"

#now made an if else statement to display that it is running or not 
if (get-service -name $NameService -Erroraction silentlyContinue){
    Write-Output "$NameService is running."

}else {
    write-output "$NameService is not running."
}