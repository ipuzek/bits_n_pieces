param([string]$att)

$From = "ivan.puzek@gmail.com"
$To = "ivan.puzek@kindle.com"
$Subject = "sending to kindle"
$Body = "forgot it"
$SmtpGoogle = "smtp.gmail.com"

$credentials = new-object Management.Automation.PSCredential “ivan.puzek”, (“PASS” | ConvertTo-SecureString -AsPlainText -Force)

Send-MailMessage -From $From -To $To -Subject $Subject -Body $Body -Attachments $att -SmtpServer $SmtpGoogle -UseSsl -Credential $credentials -Port 587
