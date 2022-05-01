$DEF_N = 10
$DEF_E = 'txt' 
$DEF_W = Get-Location
$DEF_B = 'file_'

$NumberOfFiles = ($n = Read-Host "enter amount of files to generate [default: $DEF_N]")? $n : $DEF_N
$extension = ($e = Read-Host "type extension (txt, docx, xml etc...) [default: txt]")? $e : $DEF_E
$working = ($w = Read-Host "enter working directory [default: $DEF_W]")? $w : $DEF_W
while(-not (Test-Path $working)){
    Write-Host "Path does not exit. Try again"
    $working = ($p = Read-Host "Enter working direcotry path (default:$DEF_W)")? $p : $DEF_W
}
$baseName = ($b = Read-Host "enter base name [default: file_]")? $w : $DEF_B

foreach ($i in 1..$NumberOfFiles){
    New-Item "$baseName$i.$extension"
}

<#
foreach ($i in 1..[ENTER your number]){
    New-Item "[EnteryourFormat]$i.[Extension]"
}
#>