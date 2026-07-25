# Conditional Access

## Overview

This project implements Microsoft Entra Conditional Access policies using **Report-only** mode to safely evaluate policy behaviour before enforcing access controls.

Report-only mode allows administrators to understand the impact of security policies without disrupting users.

---

## Conditional Access Policies

### CA001 – Require MFA for Administrative Roles

**Purpose**

Protect privileged accounts by requiring Multi-Factor Authentication for administrative roles.

**Configuration**

- Target: Directory Roles
- Resources: All Resources
- Grant Control: Require MFA
- State: Report-only

---

### CA002 – Require MFA for Workforce Users

**Purpose**

Require Multi-Factor Authentication for standard workforce users accessing organisational resources.

**Configuration**

- Target: All Users
- Resources: All Resources
- Grant Control: Require MFA
- State: Report-only

---

### CA003 – Block Legacy Authentication

**Purpose**

Reduce the attack surface by preventing legacy authentication protocols that do not support modern security controls.

**Configuration**

- Target: All Users
- Resources: All Resources
- Client Apps:
  - Exchange ActiveSync
  - Other Legacy Clients
- Grant Control: Block Access
- State: Report-only

---

## Validation

Authentication events were reviewed using Microsoft Entra Sign-in Logs.

Policy evaluation was verified using the **Report-only** tab.

Results demonstrated:

- CA002 evaluated successfully in Report-only mode.
- CA001 was not applicable for standard users because it targets administrative roles.
- CA003 was not applicable because the sign-in did not use legacy authentication.

---

## Security Benefits

- Implements Zero Trust access controls
- Protects privileged identities
- Reduces credential-based attack risk
- Enables phased policy deployment before enforcement
- Supports modern identity security practices

---

## Skills Demonstrated

- Microsoft Entra Conditional Access
- Multi-Factor Authentication
- Zero Trust Security
- Identity Protection
- Authentication Policy Evaluation
- Sign-in Log Analysis