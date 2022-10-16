$ADP = $env:APPDATA

$wsobj = new-object -comobject wscript.shell
$result = $wsobj.popup("ピン留めしたい画像をクリップボードにコピーしてください",0,"ピン留めウィザード",64)
$result2 = $wsobj.popup("コピー後OKを押してください",0,"ピン留めウィザード",32)

$Image = Get-Clipboard -Format Image
$Image.Save("${ADP}\SSPin\screenshot.png")