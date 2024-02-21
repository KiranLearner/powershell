#create a function to get the file info , just learning function in
#powershell
function get-fileInfo {
    $filePath = read-host -prompt "enter the file path"

    if (test-path $filepath){
        $file = get-Item $filePath
        write-host "file name : $($file.name)"
        write-host "file size (bytes): $($file.length)"
        write-host  "creation time :$($file.CreationTime)"
        write-host "last Access time : $($file.lastAcessTime)"
        write-host "last Write time : $($file.lastWriteTime)"

    } else {
        write-host "file not found : $filepath has error"
    }
}
get-fileInfo 