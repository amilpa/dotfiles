$PSStyle.FileInfo.Directory = "`e[32m"
$PSStyle.Formatting.TableHeader = "`e[34m"
# oh-my-posh --init --shell pwsh --config $env:POSH_THEMES_PATH/takuya.omp.json | Invoke-Expression

function List-Files {
    (Get-ChildItem -Name) -join '...'
}

Set-Alias -Name cdh -Value goHome
Set-Alias -Name vi -Value nvim
Set-Alias -Name lol -Value List-Files


Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# Set-PsFzfOption -PsReadlineChordProvider 'Ctrl+f' -PsReadlineChordReverseHistory 'Ctrl+r'

Function goHome { cd ~ }
Invoke-Expression (&starship init powershell)
