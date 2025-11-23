You can easily identify SUID and SGID files using ls -l by looking at the permission string. Here’s how:


---

1️⃣ SUID (Set User ID)

Look at the owner’s execute (x) permission in ls -l.

If SUID is set, the x for owner shows as s instead of x.

Example:


-rwsr-xr-x 1 root root 54256 Sep 10 12:00 /usr/bin/passwd

Explanation:

rws → s means SUID is set

The file runs with owner (root) privileges




---

2️⃣ SGID (Set Group ID)

Look at the group’s execute (x) permission.

If SGID is set, the x for group shows as s instead of x.

Example:


-rwxr-sr-x 1 root mail 53248 Sep 10 12:00 /usr/bin/write

Explanation:

r-s → s in group section means SGID is set

The file runs with group privileges




---

3️⃣ Sticky Bit (optional)

Sometimes directories use t instead of x for others (like /tmp):


drwxrwxrwt  10 root root 4096 Sep 10 12:00 /tmp

t → sticky bit, prevents users from deleting other users’ files.



---

✅ Quick tip:

Permission	Meaning

s in owner	SUID
s in group	SGID
t in others	Sticky bit



---

If you want, I can give a single ls -l command with color/highlight to instantly spot all SUID/SGID files on your server for quick auditing. Do you want me to do that?

