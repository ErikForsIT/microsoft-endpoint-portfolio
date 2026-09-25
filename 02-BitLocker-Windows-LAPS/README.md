# Project 02 · BitLocker and Windows LAPS

## Objective

Strengthen a managed Windows 11 device with centrally controlled OS-drive encryption and a unique, automatically rotated local administrator password.

## Implementation

- Configured Windows LAPS with Microsoft Entra ID password backup.
- Enabled automatic account management for `WLapsAdmin`.
- Configured a 30-day rotation period and a six-word passphrase.
- Created a BitLocker endpoint security policy for the operating-system drive.
- Configured TPM/startup behavior and a 48-digit recovery password.
- Scoped the deployment to Windows 11 devices with an assignment filter.

## Result

Both policies reported a successful deployment without errors or conflicts. BitLocker was active on `C:` and Intune displayed the managed LAPS account with password-rotation timestamps.

### LAPS policy

![Windows LAPS policy](images/laps-policy.jpg)

### Policy deployment status

![BitLocker status](images/bitlocker-status.jpg)

![LAPS status](images/laps-status.jpg)

### Client and password verification

![BitLocker enabled locally](images/bitlocker-client.jpg)

![Windows LAPS password record](images/laps-password-record.jpg)

[Back to portfolio](../README.md)

