#Azure Administrator powershell cheatsheet
#Ebrahim Shahid Sept 2021

#Install modules
install-module az -allowclobber

#Verify the installation on Internet Explorer or default browser
login-AzureRmAccount

#Check user details
get-AzureRmSubscription

#Managing Resource Groups in Powershell

#login to MS account
Login-AzAccount

#Create a resource group
New-AzResourceGroup -name Prod_IT -Location EastUS

#Display resource groups to verify
Get-AzResourceGroup

#Lock the RG from being deleted
New-AzResourceLock -Name "DoNotDelete" -Locklevel CannotDelete -ResourceGroupName Prod_IT

#Delete the lock to allow an RG to be deleted
Remove-AzResourceLock -LockId /subscriptions/83b2a818-5e03-4390-ae0b-412460ee2bcf/resourceGroups/Prod_IT/providers/Microsoft.Authorization/locks/DoNotDelete

#list resource locks to verify deletion
get-azresourcelock

#Delete resource group
#Remove-AzResourceGroup -Name Prod_IT

#Deploy a downloaded template and debug any errors then fill paramaters
New-AzResourceGroupDeployment -Name NewVmDeployment -ResourceGroupName Prod_IT -TemplateUri "C:\Users\ebrah\Desktop\ARM Templates\NewVM.json"

#Get role definitions filter name and description
get-azroledefinition | FT Name, Description

#filter actions and not actions
get-azroledefinition | FT Actions, Notactions