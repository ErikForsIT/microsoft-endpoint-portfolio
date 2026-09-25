# Microsoft Endpoint Management Portfolio

Hands-on Microsoft Intune and Microsoft Entra ID portfolio by **Erik Fors**.

This repository documents six practical endpoint-management projects completed in a dedicated lab tenant with managed Windows 11 virtual machines. The work covers provisioning, security, application delivery, compliance, access control and PowerShell automation.

[Download the complete portfolio (PDF)](docs/Erik-Fors-Microsoft-Endpoint-Portfolio.pdf)

![MD-102 training lab](assets/portfolio-banner.jpg)

## Projects

| Project | Scope | Verified result |
|---|---|---|
| [01 · Windows Autopilot](01-Windows-Autopilot/) | Hardware hash, deployment profile, OOBE and Entra join | Successful user-driven deployment and managed device state |
| [02 · BitLocker and Windows LAPS](02-BitLocker-Windows-LAPS/) | Disk encryption, recovery and managed local administrator | Policies applied, encrypted OS drive and rotated LAPS password |
| [03 · Win32 app deployment](03-Win32-App-Deployment/) | Packaging and deployment of 7-Zip | Application installed and reported as installed in Intune |
| [04 · Compliance and Conditional Access](04-Compliance-Conditional-Access/) | Device-health requirements and access enforcement | Compliant device and successful Conditional Access evaluation |
| [05 · Defender endpoint security](05-Defender-Endpoint-Security/) | Microsoft Defender Antivirus and Windows Firewall | Policies succeeded and effective protection verified locally |
| [06 · PowerShell automation](06-PowerShell-Automation/) | Intune Platform script in system context | Registry baseline changed, logged locally and reported as succeeded |

## Technology used

- Microsoft Intune
- Microsoft Entra ID and Conditional Access
- Windows Autopilot
- Windows 11 Enterprise
- Microsoft Defender Antivirus and Windows Defender Firewall
- BitLocker and Windows LAPS
- Win32 Content Prep Tool
- PowerShell

## Validation approach

Each project is supported by evidence from at least two layers: Intune or Entra reporting and local Windows verification. Examples include deployment reports, device status, sign-in logs, `dsregcmd`, registry queries, `Get-MpComputerStatus` and `Get-NetFirewallProfile`.

> This is a training-lab portfolio. Names, groups and policies are lab resources rather than production systems.

