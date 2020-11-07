
$logLocation= "B:\A_FWD\Hackathon\DEMO\logs"
#Function to write specific events to the log file
Function Write-Log {
    [CmdletBinding()]
    Param([String]$LogString)

    #Variables to build the log file
    $LogFileDate = Get-Date -Format yyyy-MM-dd
    $LogFile = "$logLocation\$LogFileDate Replace.log"

    $Stamp = (Get-Date).toString("yyyy/MM/dd HH:mm:ss")
    $Line = "$Stamp - $LogString"
    Add-Content $LogFile -Value $Line
}


$fileLocation1598= "B:\A_FWD\Hackathon\DEMO\Input"

$fileList=Get-ChildItem  $fileLocation1598 -File -Filter *.xml
foreach($file in $fileList)
{
 
(((Get-Content  -Path $file.FullName -Raw) -replace '..></TASK>','</TASK>'  )    -replace '<TASK><!.CDATA.','<TASK>'  ) | Set-Content -Path $file.FullName
  
}

#Write-Log "Replacing CDATA completed in 1598 location."

$fileLocation1599 = "B:\A_FWD\Hackathon\DEMO\Input"

$fileList=Get-ChildItem  $fileLocation1599 -File -Filter *.xml
foreach($file in $fileList)
{
 
(((Get-Content  -Path $file.FullName -Raw) -replace '..></TASK>','</TASK>'  )    -replace '<TASK><!.CDATA.','<TASK>'  ) | Set-Content -Path $file.FullName
  
}

#Write-Log "Replacing CDATA completed in 1599 location."


