# Change-Wallpaper.ps1
$Path = "C:\Users\Public\Pictures\wallpaper.jpg"  # <-- put your wallpaper path here

# Use Windows API to change wallpaper instantly
Add-Type @"
using System.Runtime.InteropServices;
public class Wallpaper {
    [DllImport("user32.dll", SetLastError = true)]
    public static extern bool SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni);
}
"@

[Wallpaper]::SystemParametersInfo(20, 0, $Path, 3)
