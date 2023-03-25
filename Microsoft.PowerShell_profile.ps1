

###########################################################################################
####                                  外观                                             ####
###########################################################################################

## 去除默认的PowerShell提示(settings文件中修改)
#"commandline": "%SystemRoot%\\System32\\WindowsPowerShell\\v1.0\\powershell.exe -Nologo",

## 自定义输出界面(建议去除，提升性能)
# echo "
#                                   _          _ _
#  _ __   _____      _____ _ __ ___| |__   ___| | |
# | '_ \ / _ \ \ /\ / / _ \ '__/ __| '_ \ / _ \ | |
# | |_) | (_) \ V  V /  __/ |  \__ \ | | |  __/ | |
# | .__/ \___/ \_/\_/ \___|_|  |___/_| |_|\___|_|_|
# |_|
# "

## 设置Posh主题
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/custom.omp.json" | Invoke-Expression


###########################################################################################
##                                   功能拓展                                           ####
###########################################################################################

## 导入模块
Import-Module ZLocation
Import-Module PSReadLine

# 自动建议
Set-PSReadLineOption -PredictionSource History

# 命令补全
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# 自定义快捷键
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadlineKeyHandler -Key Ctrl+d -Function DeleteCharOrExit


###########################################################################################
####                                 自定义功能                                         ####
###########################################################################################

# 别名函数定义
function ListForce{
		Get-ChildItem -Force
}

# 定义命令别名
Set-Alias la ListForce
Set-Alias gh Get-Help
Set-Alias vi nvim
