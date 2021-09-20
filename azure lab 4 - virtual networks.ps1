#LAB - Making an Azure Virtual Network with subnets via scripting
#Ebrahim Shahid Sept 2021

$NewVnet = New-AzVirtualNetwork -Name AlphaBeta -ResourceGroupName Tech_IT_DEPT -Location eastus -AddressPrefix "10.20.0.0/16"

#add subnet
$newsubnet = Add-AzVirtualNetworkSubnetConfig -name Private_Subnet -VirtualNetwork $NewVnet -AddressPrefix 10.20.30.0/24

Get-AzVirtualNetworkSubnetConfig -Name private_subnet $NewVnet

#associate the subnet to the vnet
$newsubnet | Set-AzVirtualNetwork
