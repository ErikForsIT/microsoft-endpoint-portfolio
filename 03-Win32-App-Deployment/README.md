# 03 Win32 med 7-Zip

**Resultat:** Intune rapporterar en installerad enhet utan installationsfel. 7-Zip File Manager visas även i Start-menyn på Windows 11-klienten.

## Mål och konfiguration

Jag paketerade och distribuerade en traditionell Windows-applikation med Intune. Målet var en tyst installation i systemkontext med en identifieringsregel som kunde användas för uppföljning.

| Del | Konfiguration |
| :--- | :--- |
| Applikation | 7-Zip 26.03 x64 |
| Paketering | Microsoft Win32 Content Prep Tool |
| Paket | `7z2603-x64.intunewin` |
| Installation | `7z2603-x64.exe /S` |
| Avinstallation | `"C:\Program Files\7-Zip\Uninstall.exe" /S` |
| Körningskontext | System |
| Identifiering | Filbaserad regel under `C:\Program Files\7-Zip` |
| Tilldelning | Required till Windows Devices med Windows 11-filter |

## Genomförande

1. Jag skapade `.intunewin`-paketet och laddade upp det som en Win32-app.
2. Jag angav programkommandon, x64-krav och identifieringsregel.
3. Jag tilldelade appen till enhetsgruppen och följde installationsstatusen.
4. Jag kontrollerade att appen fanns på klienten efter distributionen.

## Verifiering

![Intune visar en installerad enhet för 7-Zip](images/install-status.jpg)

Intunes rapportering och den lokala kontrollen visar att appen installerades. Funktionstest av applikationen, avinstallation och versionsuppgradering ingick inte i den dokumenterade verifieringen.

<details>
<summary>Visa appkonfiguration och klientkontroll</summary>

![7-Zip med tysta programkommandon och systemkontext](images/app-configuration.jpg)

![7-Zip File Manager i Windows Start-meny](images/client-verification.jpg)

</details>

## Lärdom

Installationskommandot och identifieringsregeln behöver stämma överens. Paketering, krav och tilldelning avgör hur appen når klienten; identifieringsregeln hjälper Intune att avgöra om den är installerad.

---

[Projektöversikt](../README.md) · [Föregående projekt](../02-BitLocker-Windows-LAPS/) · [Nästa projekt](../04-Compliance-Conditional-Access/)
