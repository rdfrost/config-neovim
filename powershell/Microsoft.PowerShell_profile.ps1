# Clear logo/header
Clear-Host

# Clear logo/header
Import-Module posh-git
Import-Module oh-my-posh
# Set-Theme Powerline # Powershell
Set-PoshPrompt Powerline # Powershell Core

# Fish-like auto-suggestion
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History

# PowerShell offers support for the posh-git module for autocompletion, but it is disabled by default.
$env:POSH_GIT_ENABLED = $true

# GitHub powershell completion
Invoke-Expression -Command $(gh completion -s powershell | Out-String)

# Aliases

## Copy current path
function Copy-Path-Func {(pwd).Path | CLIP}
Set-Alias Copy-Path Copy-Path-Func

## Create new Guid and copy result
function New-Guid-Copy-Func {Set-Clipboard $((New-Guid).Guid)}
Set-Alias New-Guid-Copy New-Guid-Copy-Func
