#Setting up Azure AD Groups

New-AzureADGroup -displayname AppDevelopers -MailNickname AppDevelopers


Connect-azaccount

Add-AzureADGroupMember -MemberUserPrincipalName "alex@rainingcloud.de" -TargetGroupDisplayName AppDevelopers

#verify group member
Get-AzureADGroupMember -GroupDisplayName AppDevelopers