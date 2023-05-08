[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 
iwr -Uri https://raw.githubusercontent.com/jinjinir/flags/master/flag-1.txt -OutFile $env:temp\flag-1.txt