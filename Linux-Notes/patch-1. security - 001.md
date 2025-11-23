#mcx 
Security Patch (RHSA)
- Purpose: Fixes security vulnerabilities.
- Always linked to one or more CVEs (Common Vulnerabilities and Exposures).
- Advisory Code: RHSA (Red Hat Security Advisory).
- Example: RHSA-2025:1234 → fixes CVE-2025-1111 in openssl.
- Scope: May include kernel, libraries, or application security updates.
- Command Examples:
    yum update --security
    yum update --cve CVE-2025-1111
    yum update --advisory RHSA-2025:1234

[[Linux-Patch-CVE]]
[[Linux-RHSA]]