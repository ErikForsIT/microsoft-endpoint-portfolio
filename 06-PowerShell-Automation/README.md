# Projekt 06 · PowerShell-automatisering med Intune

## Syfte

Använda ett Intune Platform script för att tillämpa en datorbaserad Windows-baslinje i systemkontext och skapa beständig lokal spårbarhet för ändringen.

## Genomförande

- Skapade ett idempotent PowerShell-script.
- Konfigurerade `DisableWindowsConsumerFeatures` under Windows-policyn CloudContent.
- Körningen utfördes utan den inloggade användarens autentiseringsuppgifter och i 64-bitars PowerShell.
- Tilldelade scriptet till gruppen med Windows-enheter.
- Skrev en lokal granskningslogg under `C:\ProgramData\ErikFors\Project6`.

Projektet använder ett **Intune Platform script**, inte Proactive Remediations, eftersom Remediations inte var tillgängligt i labbtenantens licens.

## Resultat

Intune rapporterade en lyckad enhetskörning utan fel. Registervärdet ändrades från `0` till `1` och den lokala loggen registrerade `SUCCESS` tillsammans med värdena före och efter ändringen.

[Visa PowerShell-källkoden](scripts/Configure-WindowsBaseline.ps1)

### Scriptkonfiguration

![Konfiguration av Intune Platform script](images/platform-script-configuration.jpg)

### Körresultat i Intune

![Lyckad scriptkörning](images/script-execution-success.jpg)

### Lokal verifiering och logg

![Verifiering av registervärde och logg](images/local-verification-log.jpg)

[Tillbaka till portfolion](../README.md)

