# 06 PowerShell via Intune

**Resultat:** Intune rapporterar en lyckad enhetskörning. Registervärdet `DisableWindowsConsumerFeatures` ändrades från `0` till `1` och ändringen dokumenterades i en lokal logg.

**[Visa PowerShell-källkoden](scripts/Configure-WindowsBaseline.ps1)**

## Mål och konfiguration

Jag använde ett Intune Platform script för en avgränsad registerändring i systemkontext. Målet var att distribuera konfigurationen centralt och kunna verifiera resultatet både i Intune och lokalt.

| Del | Val i labben |
| :--- | :--- |
| Distributionsmetod | Intune Platform script |
| Körningskontext | System; den inloggade användarens autentiseringsuppgifter används inte |
| PowerShell | 64-bitars värd |
| Signaturkontroll | Avstängd i labbkonfigurationen |
| Tilldelning | Windows Devices; gruppen innehöll tre enheter |
| Registervärde | `DisableWindowsConsumerFeatures` under `HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent` |
| Önskat värde | DWORD `1` |
| Loggfil | `C:\ProgramData\ErikFors\Project6\WindowsBaseline.log` |

Platform scripts valdes eftersom labbtenantens licens inte omfattade Remediations. Återkommande detektering och schemalagd korrigering ingick inte i projektet.

## Genomförande

1. Jag satte registervärdet till `0` för att skapa ett känt utgångsläge.
2. Jag distribuerade skriptet via Intune och följde körresultatet.
3. Jag läste tillbaka värdet med `reg query` och kontrollerade loggfilen.

## Verifiering

![Registervärdet är 0x1 och den lokala loggen visar SUCCESS](images/local-verification-log.jpg)

Körningen verifierades på **en klient**. Gruppens tre medlemmar ska inte tolkas som tre verifierade körningar.

<details>
<summary>Visa skriptinställningar och körresultat i Intune</summary>

![Platform script med systemkontext och 64-bitars PowerShell](images/platform-script-configuration.jpg)

![Intune visar en lyckad skriptkörning och inga fel](images/script-execution-success.jpg)

</details>

## Källkod och lärdom

Källkoden kontrollerar det aktuella värdet innan den skriver önskat värde. Den loggar både ändring och oförändrat läge och använder exitkod `0` vid framgång och `1` vid fel.

Skärmbilden visar labbkörningen. Källkoden i repot använder samma registervärde och loggsökväg, men loggradernas formulering skiljer sig från bilden. Något separat test av upprepad körning redovisas inte.

Projektet gav mig praktisk erfarenhet av systemkontext, riktad skriptdistribution och verifiering med ett tydligt före- och efterläge.

---

[Projektöversikt](../README.md) · [Föregående projekt](../05-Defender-Endpoint-Security/)
