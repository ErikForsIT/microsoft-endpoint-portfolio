# Project 01 · Windows Autopilot

## Objective

Provision a new Windows 11 device through a user-driven Microsoft Entra join flow and verify the resulting cloud identity and Intune management state.

## Implementation

- Collected and imported the device hardware hash.
- Created and assigned a Windows Autopilot deployment profile.
- Assigned the test user and prepared the VM with Sysprep/OOBE.
- Completed organization sign-in, Enrollment Status Page and Windows Hello setup.
- Verified the deployment in Intune and locally with `dsregcmd /status`.

## Result

The Autopilot deployment completed successfully in 2 minutes and 29 seconds. The device appeared as corporate-owned, Intune-managed and compliant. Local verification returned `AzureAdJoined : YES`.

### OOBE

![Windows Autopilot OOBE](images/autopilot-oobe.jpg)

### Deployment report

![Successful Autopilot deployment](images/autopilot-deployment-success.jpg)

### Local identity verification

![dsregcmd verification](images/entra-join-verification.jpg)

[Back to portfolio](../README.md)

