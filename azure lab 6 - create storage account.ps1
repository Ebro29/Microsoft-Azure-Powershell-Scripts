#Lab 6 Creating a resource group and storage account  with powershell
#Ebrahim Shahid Sept 2021

$location = "westus"
$rgname  = "payroll"
New-AzResourceGroup -Name $rgname -Location $location

Get-AzResourceGroup
$storageaccountname = "newstorageaccount123"
2
New-AzStorageAccount -Name $storageaccountname -Locaton $location -SkuName Standard_LRS -Kind StorageV2 -ResourceGroupName $rgname

 #Alternatively this can also be done using cli
 #az group create --name Tech_IT_DEPT --location westus
 #az storage account create --name techstorageimpdata --resource-group Tech_IT_DEPT --location west us --sku Standard_LRS --kind StorageV2
