# Microsoft Intune och Windowsadministration

**Erik Fors · Teknisk portfolio · Sex praktiska projekt**

Jag söker min första roll inom IT-support eller endpointadministration, med särskilt intresse för Microsoft Intune, Microsoft Entra ID och Windows. Här visar jag min praktiska erfarenhet från en egen labbmiljö: från att driftsätta en klient och distribuera appar till att konfigurera klientskydd och felsöka åtkomst.

Jag gjorde labbarna när jag pluggade till MD-102. I varje projekt finns skärmbilder från testmiljön och en beskrivning av hur jag kontrollerade resultatet.

**[Läs portfolion som PDF – 16 sidor](docs/Erik-Fors-Microsoft-Endpoint-Portfolio.pdf)** · [Visa PowerShell-källkoden](06-PowerShell-Automation/scripts/Configure-WindowsBaseline.ps1)

## Vad jag testade

| Labb | Det jag kunde kontrollera | Testets omfattning |
| --- | --- | --- |
| [Windows Autopilot](01-Windows-Autopilot/) | CL3 slutförde den användardrivna distributionen. På klienten visade `dsregcmd /status` att den var ansluten till Entra ID. | En virtuell Windows 11-klient. |
| [BitLocker och Windows LAPS](02-BitLocker-Windows-LAPS/) | BitLocker var aktivt på C:. I Entra kunde jag se det hanterade kontot och tidpunkterna för lösenordsrotation. | Lagring och hämtning av BitLocker-nyckeln samt återställning med nyckeln återstår att verifiera. |
| [7-Zip via Intune](03-Win32-App-Deployment/) | Intune rapporterade en installation och 7-Zip syntes i klientens Start-meny. | Labben gällde installation. Funktionstest, avinstallation och uppgradering ingick inte. |
| [Conditional Access](04-Compliance-Conditional-Access/) | CL2 visades som compliant och CL1 som noncompliant. Efter ändrad resurstilldelning visade OfficeHome-inloggningen `Success`. | Loggbilden visar sammanlagd CA-status. Utfallet för den enskilda policyn och ett nekat inloggningsförsök syns inte där. |
| [Defender och Windows-brandväggen](05-Defender-Endpoint-Security/) | Realtidsskyddet och de tre brandväggsprofilerna var aktiva. För Domain kunde jag även läsa av standardreglerna. | Lokal statuskontroll. Trafiktester och händelser från Network Protection i granskningsläge är inte dokumenterade. |
| [PowerShell via Intune](06-PowerShell-Automation/) | På en klient ändrades registervärdet från 0 till 1. Jag följde upp körningen i Intune och i klientens logg. | En dokumenterad körning. Upprepad körning med värdet redan satt till 1 återstår att testa. Loggtexten i det publicerade skriptet skiljer sig från labbkörningens. |

## Labbmiljö och omfattning

| Del | Använd teknik |
| :--- | :--- |
| Hantering och identitet | Microsoft Intune, Microsoft Entra ID och Windows Autopilot |
| Klienter | Virtuella Windows 11-enheter i Hyper-V |
| Säkerhet | BitLocker, Windows LAPS, Microsoft Defender Antivirus och Windows Firewall |
| Distribution och automation | Win32 Content Prep Tool och PowerShell |
| Uppföljning | Statusrapporter, inloggningsloggar, registerkontroller och lokala loggfiler |

Projekten är genomförda i en separat testtenant som en del av min förberedelse för MD-102. Konton, grupper och enhetsnamn i skärmbilderna hör till labbmiljön.
