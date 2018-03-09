# PowerShell script to quickly check Office 365 licensing status on a given user.
# Andy Stoltenberg (2/2016)

# Authenticates to Office 365 with your own UPN and universal password
$MSOLCred = get-credential -Message "Please enter your Office 365 UPN and Password"

Connect-MsolService -Credential $MSOLCred

# Prompt for the user's User Principal Name (UPN)
[string]$UPN=Read-Host "What is the user's Office 365 UPN (ex: username@yourdomain.com)?"

# Get user's Office 365 details based on provided UPN and output license info to a list
Get-MsolUser -UserPrincipalName $UPN | Format-List -Property DisplayName, IsLicensed, Licenses
