$ADP = $env:APPDATA

$wsobj = new-object -comobject wscript.shell
$result = $wsobj.popup("�s�����߂������摜���N���b�v�{�[�h�ɃR�s�[���Ă�������",0,"�s�����߃E�B�U�[�h",64)
$result2 = $wsobj.popup("�R�s�[��OK�������Ă�������",0,"�s�����߃E�B�U�[�h",32)

$Image = Get-Clipboard -Format Image
$Image.Save("${ADP}\SSPin\screenshot.png")