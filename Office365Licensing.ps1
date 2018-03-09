# PowerShell script to quickly check Office 365 licensing status on a given user.
# Andy Stoltenberg (2/2016)
#
# NOTE 1: 
#   Prior to using this script. please TEMPORARILY set your PowerShell execution policy to unrestricted.
#
# NOTE 2:
#   This script requires that the Microsoft Online Services Sign-In Assistant
#   for IT Professionals AND the Azure Active Directory PowerShell Module be installed
#   prior to use. Links below:
#
#   Sign-In Assistant: http://go.microsoft.com/fwlink/?LinkID=286152
#   Azure AD Module: http://go.microsoft.com/fwlink/p/?linkid=236297

# Authenticates to Office 365 with your own UPN and universal password
$MSOLCred = get-credential -Message "Please enter your Office 365 UPN and Universal Password"

Connect-MsolService -Credential $MSOLCred

# Prompt for the user's User Principal Name (UPN)
[string]$UPN=Read-Host "What is the user's Office 365 UPN (ex: username@wwu.edu)?"

# Get user's Office 365 details based on provided UPN and output license info to a list
Get-MsolUser -UserPrincipalName $UPN | Format-List -Property DisplayName, IsLicensed, Licenses