$profileStartTime = Get-Date

oh-my-posh init pwsh | Invoke-Expression
$poshEndTime = Get-Date
$loadDuration = $poshEndTime - $profileStartTime

Write-Host "✅ PowerShell OhMyPosh loaded in $($loadDuration.TotalMilliseconds) ms" -ForegroundColor Green

function dotfiles {
    git --git-dir=$HOME/.dotfiles --work-tree=$HOME @Args
}
#New-Alias dotfiles dotfiles
#. ".$HOME\Git\vms-bob\bob" 

$profileEndTime = Get-Date
$loadDuration = $profileEndTime - $profileStartTime
Write-Host "✅ PowerShell profile loaded in $($loadDuration.TotalMilliseconds) ms" -ForegroundColor Green
