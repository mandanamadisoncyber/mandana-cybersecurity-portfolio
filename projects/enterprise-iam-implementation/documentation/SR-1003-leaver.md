# Leaver Process

## Service Request

SR-1003

David Chen has left Northwind Digital Ltd.

## IAM Activities

- Disabled the user account
- Revoked active sign-in sessions
- Removed all security group memberships
- Confirmed no administrative roles or licences remained assigned

## Result

The user can no longer authenticate to Microsoft Entra ID, and all business access has been removed while preserving the identity object for audit and compliance purposes.

## Security Considerations

Disabling the account immediately prevents unauthorised access while preserving audit history.

Removing unnecessary access supports the principle of least privilege and reduces the risk of orphaned permissions.