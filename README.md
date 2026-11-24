# Microsoft Intune och Windowsadministration

**Erik Fors · Teknisk portfolio · Sex praktiska projekt**

Jag har byggt och testat en Windows 11-labbmiljö med Microsoft Intune och Microsoft Entra ID. Här visar jag hur jag provisionerar enheter, distribuerar appar, konfigurerar klientskydd och felsöker åtkomst. Varje projekt beskriver mina konfigurationsval och hur jag kontrollerade resultatet.

**[Läs portfolion som PDF – 16 sidor](docs/Erik-Fors-Microsoft-Endpoint-Portfolio.pdf)** · [Visa PowerShell-källkoden](06-PowerShell-Automation/scripts/Configure-WindowsBaseline.ps1)

## Projekt och resultat

| Projekt | Praktiskt arbete | Dokumenterat resultat |
| :--- | :--- | :--- |
| **[01 Windows Autopilot](01-Windows-Autopilot/)** | Användardriven distribution, ESP och OOBE | Lyckad distribution och `AzureAdJoined : YES` |
| **[02 BitLocker och Windows LAPS](02-BitLocker-Windows-LAPS/)** | Diskkryptering och hanterat lokalt administratörskonto | BitLocker aktivt på C: och LAPS-post med rotationsinformation |
| **[03 Win32 med 7-Zip](03-Win32-App-Deployment/)** | Paketering, tyst installation och identifieringsregel | `Installed` i Intune och appen synlig på klienten |
| **[04 Efterlevnad och Conditional Access](04-Compliance-Conditional-Access/)** | Säkerhetskrav och felsökning av resursomfattning | Compliant klient och en inloggning med CA-status `Success` |
| **[05 Antivirus och brandvägg](05-Defender-Endpoint-Security/)** | Defender-policyer och lokal statuskontroll | Två policyer med `Succeeded`, aktivt antivirusskydd och brandvägg |
| **[06 PowerShell via Intune](06-PowerShell-Automation/)** | Registerkonfiguration i systemkontext med lokal logg | Värdet ändrat från `0` till `1` och en lyckad enhetskörning |

## Mitt arbetssätt

Jag börjar med ett avgränsat mål och en tilldelning till rätt användare eller enheter. Efter distributionen följer jag status i Intune eller Entra och kompletterar med lokala kontroller där det är relevant.

Två exempel på felsökning i projekten:

- **Conditional Access:** `Not Applied` ledde till kontroll av policydetaljerna. När målresursen korrigerades visade ett nytt test `Success`.
- **Windows Firewall:** `NotConfigured` i en PowerShell-vy kompletterades med `netsh` för att kontrollera Domain-profilens effektiva standardåtgärder.

## Labbmiljö och omfattning

| Del | Använd teknik |
| :--- | :--- |
| Hantering och identitet | Microsoft Intune, Microsoft Entra ID och Windows Autopilot |
| Klienter | Virtuella Windows 11-enheter i Hyper-V |
| Säkerhet | BitLocker, Windows LAPS, Microsoft Defender Antivirus och Windows Firewall |
| Distribution och automation | Win32 Content Prep Tool och PowerShell |
| Uppföljning | Statusrapporter, inloggningsloggar, registerkontroller och lokala loggfiler |

Projekten är genomförda i en separat testtenant som en del av min förberedelse för MD-102. Konton, grupper och enhetsnamn i skärmbilderna hör till labbmiljön. Dokumentationen skiljer mellan konfigurerade inställningar, verifierade resultat och nästa teststeg.

## Läs vidare

Välj ett projekt ovan för tekniska detaljer och skärmbilder. PDF:en samlar alla sex projekt i ett sammanhängande dokument. PowerShell-projektet innehåller även källkod och en beskrivning av körningskontexten.

*Dokumentation uppdaterad september 2026.*
