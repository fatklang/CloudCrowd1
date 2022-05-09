#Mapping a Network Drive
#Variables
$MapNetworkDrive = read-host “Name Network Drive”
#prompt user to select the drive to use for storage
$MapNetworkPath = read-host “Type file path EX: \\Lon-DC1\Edwardshare”
#prompts user for input for the share file path
New-PSdrive -Name $MapNetworkDrive -psprovider filesystem -root $MapNetworkPath -persist
