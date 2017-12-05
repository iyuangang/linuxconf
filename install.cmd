@PowerShell -ExecutionPolicy Bypass -Command Invoke-Expression $('$args=@(^&{$args} %*);'+[String]::Join(';',(Get-Content '%~f0') -notmatch '^^@PowerShell.*EOF$')) & goto :EOF

echo "     _/_/_/_/    _/_/_/    _/_/_/  _/      _/  _/_/_/  _/      _/  " 
echo "    _/        _/        _/        _/      _/    _/    _/_/  _/_/   " 
echo "   _/_/_/      _/_/    _/        _/      _/    _/    _/  _/  _/    " 
echo "  _/              _/  _/          _/  _/      _/    _/      _/     " 
echo " _/        _/_/_/      _/_/_/      _/      _/_/_/  _/      _/      " 
echo "           version : 1.31      by : iyuangang                      "

Push-Location ~

$app_name    = "FSCVim"
$repo_url    = "https://github.com/iyuangang/.vim.git"
$repo_name   = ".vim"
$repo_path   = "$HOME\.vim"

if (!(Test-Path "$HOME\.vim")) {
    echo "==> Trying to clone $app_name"
    git clone $repo_url $repo_path
} else {
    echo "==> Trying to update $app_name"
    Push-Location $repo_path
    git pull origin dev
}

echo ""

if (!(Test-Path "$HOME\vimfiles")) {
    cmd /c mklink $HOME\vimfiles $repo_path
} else {
    echo "[OK] vimfiles already exists"
}

echo ""
echo "Almost done!"
echo "=============================================================================="
echo "==        Open GVim and it will install the plugins automatically           =="
echo "=============================================================================="
echo ""
echo "That's it. Thanks for installing $app_name. Enjoy!"
echo ""

Function Pause ($Message = "Press any key to continue . . . ") {
    if ((Test-Path variable:psISE) -and $psISE) {
        $Shell = New-Object -ComObject "WScript.Shell"
        $Button = $Shell.Popup("Click OK to continue.", 0, "Script Paused", 0)
    } else {     
        Write-Host -NoNewline $Message
        [void][System.Console]::ReadKey($true)
        Write-Host
    }
}

Pause
