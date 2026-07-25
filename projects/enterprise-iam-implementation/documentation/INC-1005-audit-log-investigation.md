# Audit Log Investigation

## Incident

**Incident ID:** INC-1005

**Requester:** Internal Audit

**Priority:** Medium

**Summary:**

Review Microsoft Entra audit logs to verify identity administration activities and confirm that changes are traceable for security and compliance purposes.

---

## Objective

Validate that administrative actions performed within Microsoft Entra ID are recorded and can be audited.

---

## Investigation

Microsoft Entra Audit Logs were reviewed to verify recent identity administration activities.

The investigation included reviewing:

- User updates
- User licence assignments
- Conditional Access policy updates
- Security Defaults configuration changes

The audit logs were used to confirm that each administrative action was successfully recorded with details of the initiating account, timestamp, affected resource and operation status.

---

## Findings

The audit logs successfully recorded administrative actions performed within the tenant.

Each event included:

- Activity performed
- Initiating user
- Target object
- Timestamp
- Result

This provides a complete audit trail for identity administration activities.

---

## Security Benefits

Audit logging supports:

- Accountability
- Change tracking
- Compliance
- Incident investigations
- Forensic analysis

---

## Skills Demonstrated

- Microsoft Entra Audit Logs
- Identity Administration
- Change Auditing
- Microsoft Entra ID Governance
- Conditional Access Administration
- Security Monitoring
- Compliance Support