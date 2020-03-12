# [Parameters accepted by this script]
# Note: Set 'Allow insecure apps' to 'Yes' at https://myaccount.google.com/security?pli=1#connectedapps

Param(
    # Message body
    # - Syntax:   -body1 "message body 1" -body2 "message body 2"
    [string]$body1,
    [string]$body2
)

$body = -join('"', $body1, '" ', $body2);
$emailFrom = "username@gmail.com"
$emailTo = "trigger@applet.ifttt.com"
$subject = "#twitter"
$smtpServer = "smtp.gmail.com"
$smtpClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$smtpClient.EnableSsl = $true
$smtpClient.Credentials = New-Object System.Net.NetworkCredential("username", "password");
$smtpClient.Send($EmailFrom, $EmailTo, $Subject, $Body)
