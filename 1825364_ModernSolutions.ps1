function KillThatProcess([string] $note){

    $procs = gps $note

    $amount = $procs.Count

    $prompt = read-Host -prompt "There are $amount processes with the name $note, proceed? Y/N"

        if($prompt -eq "y" -OR $prompt -eq "Y"){
          gps $note |spps
        }
        else{
          Write-Host "Hello, my name is Kyle and I am from the IRS, and your kamputer has a virus. Give me credit kard information and I will fix virus." -ForegroundColor Red -BackgroundColor Black
        }
}



function Bamboozle($location = $PSScriptRoot){
$random = -join ((65..90)| Get-Random -Count 1 | % {[char]$_})
Write-Host "Hallo, you have been Bamboozled, your random letter is $random, it is the new counter virus, and you are now infected, IT'S CORONA TIME" -ForegroundColor Yellow
gci -Path $location -File *$random* | Remove-Item -WhatIf
}
