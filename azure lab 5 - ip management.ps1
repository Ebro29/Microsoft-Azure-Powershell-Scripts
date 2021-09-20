#LAB 5 - Script to manage IPs using Powershell
#Ebrahim Shahid Sept 2021

$nic = Get-AzNetworkInterface -Name webserver780 -ResourceGroupName Tech_IT_DEPT
$ipaddress = $nic.IpConfigurations.PrivateIpAddress
$allmethod = $nic.IpConfigurations.PrivateAllocationMethod
$nic.IpConfigurations[0].PrivateIpAllocationMethod = "static"
Set-AzNetworkInterface -NetworkInterface $nic

$info  = "The IP address of the device is " + $ipaddress + "And the allocation method is " + $allmethod

$info