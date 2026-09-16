## Dependency Security Lab: Finding and Fixing a Vulnerable Package

I built this project to practise reviewing third-party dependencies. I added Lodash 4.17.20 to a small Node.js project, then ran `npm audit`. The audit reported one high-severity vulnerability and listed the affected Lodash advisories.

I ran `npm audit fix`, confirmed the installed version was Lodash 4.18.1, and ran the audit again. It reported zero known vulnerabilities.

### What I practised

* Reading an npm audit report and checking affected package versions
* Updating a vulnerable dependency
* Checking the installed version and rerunning the audit
* Documenting the finding, remediation and verification

### Result

**Vulnerable dependency → Audit finding → Package update → Audit with zero known vulnerabilities**

[View the full project on GitLab](https://gitlab.com/mandana-appsec/dependency-security-lab) · [View the audit finding](https://gitlab.com/mandana-appsec/dependency-security-lab/-/blob/main/screenshots/02-npm-audit-finding.png) · [View the remediation evidence](https://gitlab.com/mandana-appsec/dependency-security-lab/-/blob/main/screenshots/03-remediation-verified.png)
