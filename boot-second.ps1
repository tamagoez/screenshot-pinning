# Start-Process -FilePath C:\Users\sgiga\Documents\picpin\shot.bat -Wait
$ADP = $env:APPDATA
powershell -ExecutionPolicy RemoteSigned -File "${ADP}\SSPin\usewincap.ps1"
Start-Process -FilePath "${ADP}\SSPin\main.bat" -WindowStyle Hidden