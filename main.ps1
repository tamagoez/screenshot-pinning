Add-Type -AssemblyName System.Drawing
Add-Type -AssemblyName System.Windows.Forms

$ADP = $env:APPDATA

$image = New-Object System.Drawing.Bitmap("${ADP}\SSPin\screenshot.png")
$imgwidth = $image.Width
$imageheight = $image.Height
$image.Dispose()

$Form = New-Object System.Windows.Forms.Form
$Form.Size = New-Object System.Drawing.Size(($imgwidth + 17),($imageheight + 40))
$Form.Text = "ピン留めウィンドウ"
$Form.TopMost = $True
$Form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::None
$Form.WindowState = [System.Windows.Forms.FormWindowState]::Normal

$FormImg = New-Object System.Windows.Forms.PictureBox
# $FormImg.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Zoom
$FormImg.ImageLocation = "${ADP}\SSPin\screenshot.png"
$FormImg.Width = $imgwidth
$FormImg.Height = $imageheight
$Form.Controls.Add($FormImg)

$Form.Add_Shown({$Form.Activate()})
$Form.Add_Activated({$Form.Top += -31; $Form.Left += -8; $Form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedToolWindow})
$Form.Add_Deactivate({$Form.Top += 31; $Form.Left += 8; $Form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::None})
[void] $Form.ShowDialog()