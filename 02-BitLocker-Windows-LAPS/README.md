# Projekt 02 · BitLocker och Windows LAPS

## Syfte

Förstärka säkerheten på en hanterad Windows 11-enhet med centralt styrd kryptering av operativsystemdisken och ett unikt, automatiskt roterat lokalt administratörslösenord.

## Genomförande

- Konfigurerade Windows LAPS med säkerhetskopiering av lösenordet till Microsoft Entra ID.
- Aktiverade automatisk kontohantering för `WLapsAdmin`.
- Konfigurerade 30 dagars rotationsintervall och en lösenordsfras med sex ord.
- Skapade en endpoint security-policy för BitLocker på operativsystemdisken.
- Konfigurerade TPM/startbeteende och ett 48-siffrigt återställningslösenord.
- Begränsade distributionen till Windows 11-enheter med ett tilldelningsfilter.

## Resultat

Båda policyerna rapporterade lyckad distribution utan fel eller konflikter. BitLocker var aktivt på `C:` och Intune visade det hanterade LAPS-kontot med tidpunkter för lösenordsrotation.

### LAPS-policy

![Windows LAPS-policy](images/laps-policy.jpg)

### Distributionsstatus

![Status för BitLocker](images/bitlocker-status.jpg)

![Status för Windows LAPS](images/laps-status.jpg)

### Verifiering på klienten och i Intune

![BitLocker aktiverat lokalt](images/bitlocker-client.jpg)

![Lösenordspost för Windows LAPS](images/laps-password-record.jpg)

[Tillbaka till portfolion](../README.md)

