  $PasswordLength = 19
  $password = “”
  # Set Password Character Strings (Put space in to really confuse them)
  $set = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz!£$%^[/\]() _*#".ToCharArray() 


  # Build Password on Length Variable
  do{
      $password += $set | Get-Random; 
  }
  until ($password.Length -ge $passwordlength)
  # Convert to Secure String
  $pwd = convertto-securestring $password -asplaintext -force
  # Display Password
  Write-Host "Your password appears `"in quotes`" But it will never contain any quotes.";
  Write-Host "";
  Write-Host "`"$Password`"";
  Write-Host "";
  pause