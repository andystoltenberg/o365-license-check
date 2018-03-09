# o365-license-check

A simple PowerShell tool for checking Office 365 licensing status on a given user using their UPN.

This was created as a proof-of-concept tool for a specific workplace use as well as a PowerShell learning exercise. This tool has not 
been maintained and is out of date.

Notes:

This tool requires that BOTH the Microsoft Online Services Sign-In Assistant for IT Professionals -AND- the Azure Active Directory 
PowerShell Module be installed BEFORE using it.

Links to download both items are here:
  - Sign-In Assistant: http://go.microsoft.com/fwlink/?LinkID=286152
  - Azure AD Module: http://go.microsoft.com/fwlink/p/?linkid=236297
  
Please ensure you have the appropriate PowerShell execution policy set to run this script locally. For more information on PowerShell 
execution policies, use: Get-Help Set-ExecutionPolicy -Full

Once this tool is executed, you will be prompted for your personal Office 365 UPN and associated password to authenticate to Microsoft 
online services. You will then be prompted to enter the UPN for the user in question that you would like to check the licensing 
status of. To check another user, simply re-run the script.
  
Built: 2/2016
