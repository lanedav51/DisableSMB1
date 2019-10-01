$TxtPath = "C:\Users\baseb\OneDrive\Documents\PS_Scripts\ComputerTest.csv"
$File = Import-Csv $TxtPath
$Computers = $File.Computers
$x = 0
foreach($Computer in $Computers)
{
    $x++
}
echo $x