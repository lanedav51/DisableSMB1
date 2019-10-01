$TxtPath = "InsertPathHere"
$File = Import-Csv $TxtPath
$Computers = $File.Computers

foreach($Computer in $Computers)
{
    Enter-PSSession -ComputerName $Computer
    Get-WindowsOptionalFeature SMBv1
    Disable-WindowsOptionalFeature SMB1protocol
    Exit-PSSession
}