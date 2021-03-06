Write-Verbose "Entering script run-vsts.ps1"

Import-Module $PSScriptRoot\ps_modules\VstsAzureHelpers_
Initialize-Azure

$resourceGroupName = Get-VstsInput -Name resourceGroupName -Require
$prefix = Get-VstsInput -Name prefix
$outputNames = Get-VstsInput -Name outputNames
$whenLastDeploymentIsFailed = Get-VstsInput -Name whenLastDeploymentIsFailed
$deploymentNameFilter = Get-VstsInput -Name deploymentNameFilter

.\arm-outputs.ps1