# Project 04 · Compliance and Conditional Access

## Objective

Evaluate Windows device health in Intune and use that result as an access condition in Microsoft Entra ID.

## Implementation

- Required BitLocker, Secure Boot, Windows Firewall and TPM.
- Set the minimum operating-system version to `10.0.22000`.
- Required Microsoft Defender for Endpoint machine risk to be Low or lower.
- Assigned the policy through a Windows 11 device filter.
- Created a Conditional Access policy for Windows devices.
- Required the device to be marked as compliant before access was granted.

## Result

The target device became compliant. A later sign-in was evaluated successfully by Conditional Access after the resource assignment was corrected to include all cloud resources.

### Compliance policy

![Compliance policy summary](images/compliance-policy.jpg)

### Device compliance

![Compliant Windows device](images/device-compliance.jpg)

### Conditional Access verification

![Conditional Access success in sign-in logs](images/conditional-access-success.jpg)

[Back to portfolio](../README.md)

