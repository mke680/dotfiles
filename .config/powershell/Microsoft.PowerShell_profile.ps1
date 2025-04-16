oh-my-posh init pwsh | Invoke-Expression
function dotfiles {
    git --git-dir=$HOME/.dotfiles --work-tree=$HOME @Args
}
#New-Alias dotfiles dotfiles

Write-Host "✅ PowerShell profile loaded!"

