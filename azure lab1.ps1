#Lab1 - Creating a user in active directory

#Install active directory
install-module -name AzureAD -Force

#Call AD
Get-Module azuread
#Connect with a microsoft account
Connect-AzureAD
#Display all users (for admin)
get-azureaduser

#Create a new user with a provided password
#creating a password
$userspassword = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$userspassword.Password = "Delta98765!"

#create username
new-azureaduser -DisplayName "Steve" -PasswordProfile $userspassword -UserPrincipalName Steve@rainingcloud.de -MailNickName "Steveford"
