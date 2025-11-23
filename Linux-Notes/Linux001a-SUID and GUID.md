

---

# 🛡️ SOP: [[Linux001-SUID & SGID]] File Handling in Production Trading Systems

---

## 🎯 Objective

Ensure only required SUID/SGID files exist on production trading servers, reducing privilege escalation risks and meeting compliance requirements.

---

## 1️⃣ Identification

Run the following commands:

```bash
# Find all SUID files
find / -perm -4000 -type f 2>/dev/null

# Find all SGID files
find / -perm -2000 -type f 2>/dev/null

# Save results for audit
find / -perm -4000 -type f 2>/dev/null > /var/log/suid_scan.log
find / -perm -2000 -type f 2>/dev/null > /var/log/sgid_scan.log
```

---

## 2️⃣ Review

- Compare results with **approved whitelist**.
- Mark files in the table below:

|File Path|Purpose|Approved (Y/N)|Action Required|
|---|---|---|---|
|/usr/bin/passwd|Change password|Y|Keep|
|/usr/bin/newgrp|Group mgmt|N|Remove SUID|
|/tmp/suspicious_file|Unknown|N|Escalate to SecOps|

---

## 3️⃣ Action

- **Remove SUID/SGID if not required:**

```bash
chmod u-s /path/to/file   # Remove SUID
chmod g-s /path/to/file   # Remove SGID
```

- **Remove package if unnecessary:**

```bash
yum remove <package>
```

- **Harden approved binaries:**

```bash
chown root:root /path/to/file
chmod 755 /path/to/file
```

---

## 4️⃣ Baseline & Documentation

- Store approved files in:  
    `/etc/security/suid_whitelist.conf`

Example whitelist:

```
/usr/bin/passwd
/usr/bin/sudo
```

- Keep audit record of:
    - File path
    - Justification
    - Approver name

---

## 5️⃣ Monitoring & Alerts

- Add integrity monitoring with AIDE/Tripwire.
- Example daily cron job (2 AM scan):

```bash
0 2 * * * root find / -perm -4000 -o -perm -2000 -type f 2>/dev/null | diff - /etc/security/suid_baseline.log
```

- If differences found → trigger alert to Security team.

---

## 6️⃣ Compliance & Audit

- Generate **monthly report** containing:
    
    - Current list of SUID/SGID files.
    - Changes since last report.
    - Remediation performed.
- Keep reports in compliance folder (`/var/audit/reports/suid_sgid/`).
    

---

## ✅ Final Checklist

- [ ] Scan completed
- [ ] Review vs whitelist done
- [ ] Unnecessary SUID/SGID removed
- [ ] Baseline updated
- [ ] Alerts configured/tested
- [ ] Monthly report generated

---

⚠️ **Note for Production:** Any new SUID/SGID file must go through **Change Management** approval before being deployed.

---

Would you like me to also create a **[[sample whitelist file]]** (with only safe defaults for RHEL trading servers), so your team can use it directly as `/etc/security/suid_whitelist.conf`?