## Findings

Authentication events were successfully reviewed using Microsoft Entra Sign-in Logs.

Conditional Access policies were configured in **Report-only** mode to evaluate policy behaviour without impacting user access.

The Report-only evaluation confirmed:

- CA002 (Require MFA for Workforce Users) was evaluated.
- CA001 (Require MFA for Administrative Roles) was not applicable because the user was not assigned an administrative role.
- CA003 (Block Legacy Authentication) was not applicable because the authentication request did not use a legacy client.

This validated the Conditional Access policy scope and demonstrated how Microsoft Entra reports policy evaluation separately from enforcement.