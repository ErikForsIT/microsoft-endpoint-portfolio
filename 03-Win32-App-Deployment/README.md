# Project 03 · Win32 application deployment

## Objective

Package, deploy and validate a traditional Windows application through Microsoft Intune.

## Implementation

- Packaged 7-Zip 26.03 x64 as an `.intunewin` file.
- Configured silent install and uninstall commands.
- Used system installation context and x64 requirements.
- Added a file-based detection rule for the installed application.
- Assigned the app to the managed Windows device group.

## Result

Intune reported one installed device with no failures. The application was also visible in the Windows 11 Start menu, confirming the cloud-to-client deployment path.

### Application configuration

![7-Zip Win32 app configuration](images/app-configuration.jpg)

### Intune installation status

![Installed device status](images/install-status.jpg)

### Client verification

![7-Zip installed on Windows 11](images/client-verification.jpg)

[Back to portfolio](../README.md)

