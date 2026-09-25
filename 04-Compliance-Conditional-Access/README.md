# Projekt 04 · Efterlevnad och villkorsstyrd åtkomst

## Syfte

Utvärdera en Windows-enhets säkerhetsstatus i Intune och använda resultatet som åtkomstvillkor i Microsoft Entra ID.

## Genomförande

- Krävde BitLocker, Secure Boot, Windows Firewall och TPM.
- Satte lägsta operativsystemsversion till `10.0.22000`.
- Krävde att maskinrisken i Microsoft Defender for Endpoint var Low eller lägre.
- Tilldelade policyn med ett enhetsfilter för Windows 11.
- Skapade en Conditional Access-policy för Windows-enheter.
- Krävde att enheten var markerad som compliant innan åtkomst beviljades.

## Resultat

Målenheten blev compliant. En senare inloggning utvärderades framgångsrikt av Conditional Access efter att resursomfattningen korrigerats till att inkludera alla molnresurser.

### Efterlevnadspolicy

![Sammanfattning av efterlevnadspolicyn](images/compliance-policy.jpg)

### Enhetens efterlevnadsstatus

![Compliant Windows-enhet](images/device-compliance.jpg)

### Verifiering av Conditional Access

![Lyckad Conditional Access-utvärdering i inloggningsloggen](images/conditional-access-success.jpg)

[Tillbaka till portfolion](../README.md)

