# Configure-WindowsBaseline.ps1
# Intune Platform script: configure a device-level Windows baseline and write an audit log.

[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'

$RegistryPath = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent'
$ValueName = 'DisableWindowsConsumerFeatures'
$DesiredValue = 1
$LogDirectory = 'C:\ProgramData\ErikFors\Project6'
$LogPath = Join-Path $LogDirectory 'WindowsBaseline.log'

function Write-AuditLog {
    param(
        [Parameter(Mandatory)]
        [string]$Message
    )

    if (-not (Test-Path -LiteralPath $LogDirectory)) {
        New-Item -Path $LogDirectory -ItemType Directory -Force | Out-Null
    }

    $Timestamp = Get-Date -Format 'yyyy-MM-dd HH:mm:ss'
    Add-Content -LiteralPath $LogPath -Value "$Timestamp - $Message" -Encoding UTF8
}

try {
    if (-not (Test-Path -LiteralPath $RegistryPath)) {
        New-Item -Path $RegistryPath -Force | Out-Null
    }

    $CurrentValue = (Get-ItemProperty -LiteralPath $RegistryPath -Name $ValueName -ErrorAction SilentlyContinue).$ValueName

    if ($CurrentValue -ne $DesiredValue) {
        New-ItemProperty -LiteralPath $RegistryPath -Name $ValueName -PropertyType DWord -Value $DesiredValue -Force | Out-Null
        Write-AuditLog "SUCCESS - Changed $ValueName from '$CurrentValue' to '$DesiredValue'."
    }
    else {
        Write-AuditLog "SUCCESS - $ValueName already equals '$DesiredValue'; no change required."
    }

    exit 0
}
catch {
    Write-AuditLog "ERROR - $($_.Exception.Message)"
    exit 1
}

