# Project 05 · Defender endpoint security

## Objective

Deploy a practical endpoint-security baseline for Microsoft Defender Antivirus and Windows Defender Firewall, then verify both the management status and the effective local configuration.

## Antivirus configuration

- Cloud block level set to High.
- PUA protection enabled in block mode.
- Real-time, behavior and downloaded-file monitoring enabled.
- Daily quick scan configured.
- Network Protection introduced in audit mode to reduce rollout risk.

## Firewall configuration

- Domain, Private and Public profiles enabled.
- Default inbound traffic blocked.
- Default outbound traffic allowed.
- Local rules permitted in the lab configuration.

## Result

Both endpoint security policies reported `1 Succeeded` with no errors or conflicts. PowerShell and `netsh` confirmed active antivirus protection and the effective firewall policy `BlockInbound,AllowOutbound`.

### Antivirus deployment and local verification

![Antivirus policy status](images/antivirus-policy-status.jpg)

![Microsoft Defender local verification](images/antivirus-local-verification.jpg)

### Firewall deployment and local verification

![Firewall policy status](images/firewall-policy-status.jpg)

![Windows Firewall local verification](images/firewall-local-verification.jpg)

[Back to portfolio](../README.md)

