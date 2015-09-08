$iisExpressExe = '"c:\Program Files\IIS Express\iisexpress.exe"'
$path = "C:\dev\CMLabs\ClearMeasureBootcamp\src\.vs\config\applicationhost.config"
$port = 43507
$site = "UI"
$apppool = "Clr4IntegratedAppPool"
$params = "/config:$path /site:$site"
get-process | where { $_.ProcessName -like "IISExpress" } | stop-process
$command = "$iisExpressExe $params"
cmd /c start cmd /k "$command"
