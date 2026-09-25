# Projekt 05 · Defender Endpoint Security

## Syfte

Distribuera en praktisk säkerhetsbaslinje för Microsoft Defender Antivirus och Windows Defender Firewall samt verifiera både hanteringsstatusen och den effektiva lokala konfigurationen.

## Antiviruskonfiguration

- Cloud Block Level satt till High.
- PUA Protection aktiverat i blockeringsläge.
- Realtidsskydd, beteendeövervakning och kontroll av nedladdade filer aktiverades.
- Daglig snabbskanning konfigurerades.
- Network Protection infördes i audit mode för att minska risken vid utrullning.

## Brandväggskonfiguration

- Profilerna Domain, Private och Public aktiverades.
- Inkommande trafik blockerades som standard.
- Utgående trafik tilläts som standard.
- Lokala regler tilläts i labbkonfigurationen.

## Resultat

Båda endpoint security-policyerna rapporterade `1 Succeeded` utan fel eller konflikter. PowerShell och `netsh` bekräftade aktivt antivirusskydd och den effektiva brandväggspolicyn `BlockInbound,AllowOutbound`.

### Antivirus – distribution och lokal verifiering

![Status för antiviruspolicyn](images/antivirus-policy-status.jpg)

![Lokal verifiering av Microsoft Defender](images/antivirus-local-verification.jpg)

### Brandvägg – distribution och lokal verifiering

![Status för brandväggspolicyn](images/firewall-policy-status.jpg)

![Lokal verifiering av Windows Firewall](images/firewall-local-verification.jpg)

[Tillbaka till portfolion](../README.md)

