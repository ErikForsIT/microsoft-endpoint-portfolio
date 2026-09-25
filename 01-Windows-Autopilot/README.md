# Projekt 01 · Windows Autopilot

## Syfte

Provisionera en ny Windows 11-enhet genom ett användardrivet flöde med Microsoft Entra join och verifiera den resulterande molnidentiteten och hanteringsstatusen i Intune.

## Genomförande

- Samlade in och importerade enhetens hardware hash.
- Skapade och tilldelade en distributionsprofil för Windows Autopilot.
- Tilldelade testanvändaren och förberedde den virtuella datorn med Sysprep/OOBE.
- Genomförde organisationsinloggning, Enrollment Status Page och Windows Hello-konfiguration.
- Verifierade distributionen i Intune och lokalt med `dsregcmd /status`.

## Resultat

Autopilot-distributionen slutfördes framgångsrikt på 2 minuter och 29 sekunder. Enheten visades som företagsägd, Intune-hanterad och compliant. Den lokala verifieringen returnerade `AzureAdJoined : YES`.

### OOBE

![Windows Autopilot OOBE](images/autopilot-oobe.jpg)

### Distributionsrapport

![Lyckad Autopilot-distribution](images/autopilot-deployment-success.jpg)

### Lokal identitetsverifiering

![Verifiering med dsregcmd](images/entra-join-verification.jpg)

[Tillbaka till portfolion](../README.md)

