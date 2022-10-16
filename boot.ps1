$ADP = $env:APPDATA
Start-Process -FilePath powershell -ArgumentList "-ExecutionPolicy RemoteSigned -File ${ADP}\SSPin\boot-second.ps1" -WindowStyle Hidden