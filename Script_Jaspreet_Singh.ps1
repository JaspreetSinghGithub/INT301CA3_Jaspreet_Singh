$Time = Get-Date
$Time.ToUniversalTime()|
Out-File -FilePath D:\INT301CA3\Output.txt 
$Title="General Inforamtion of System" |
Out-File -FilePath D:\INT301CA3\Output.txt -Append
Get-WmiObject -Class Win32_ComputerSystem|
Out-File -FilePath D:\INT301CA3\Output.txt -Append
$Title="Windows Information"|Out-File -FilePath D:\INT301CA3\Output.txt -Append
Get-ComputerInfo -Property *Windows*|
Out-File -FilePath D:\INT301CA3\Output.txt -Append
Get-WmiObject -Class SoftwareLicensingService |Select OA3xOriginalProductKey|
Out-File -FilePath D:\INT301CA3\Output.txt -Append
$Title="OS Information"|Out-File -FilePath D:\INT301CA3\Output.txt -Append
Get-ComputerInfo -Property "Os*"|
Out-File -FilePath D:\INT301CA3\Output.txt -Append
$Title="BIOS Information"|Out-File -FilePath D:\INT301CA3\Output.txt -Append
Get-ComputerInfo -Property *BIOS*|
Out-File -FilePath D:\INT301CA3\Output.txt -Append
$Title="Processor Information"|Out-File -FilePath D:\INT301CA3\Output.txt -Append
Get-WmiObject -Class Win32_Processor|
Out-File -FilePath D:\INT301CA3\Output.txt -Append
$Title="Memory Information"|Out-File -FilePath D:\INT301CA3\Output.txt -Append
Get-WmiObject -Class Win32_LogicalDisk|
Out-File -FilePath D:\INT301CA3\Output.txt -Append
Get-WmiObject win32_physicalmemory | Select Manufacturer,Banklabel,Configuredclockspeed,Devicelocator,Capacity,Serialnumber|
Out-File -FilePath D:\INT301CA3\Output.txt -Append
$Title="Programs Installed"|Out-File -FilePath D:\INT301CA3\Output.txt -Append
#Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion, Publisher, InstallDate | 
Get-WmiObject -Class Win32_Product|Select -Property Name,Version|
Out-File -FilePath D:\INT301CA3\Output.txt -Append
$Title="Running Processes"|Out-File -FilePath D:\INT301CA3\Output.txt -Append
Get-Process|Format-Table -Property ID, ProcessName, CPU|
Out-File -FilePath D:\INT301CA3\Output.txt -Append