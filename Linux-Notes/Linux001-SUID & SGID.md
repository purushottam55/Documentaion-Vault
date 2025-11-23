SUID (Set User ID): A special permission that allows a user to execute a file with the file owner’s privileges, often root.

SGID (Set Group ID): A special permission that allows a user to execute a file or create files in a directory with the file’s group privileges.
[[Linux002-How to identify suid gui using ls -l]]


## Example 1

Here’s a simple example for each:

- **SUID:**

```bash
/usr/bin/passwd
```

- Normal users can change their password, but the program runs with **root privileges** to update `/etc/shadow`.
    
- **SGID:**
    

```bash
/tmp
```

- Files created in `/tmp` inherit the **group of the directory**, not the user’s primary group.

**Quick memory tip:**

- **SUID → Owner’s power**
- **SGID → Group’s power**

Do you want me to give **2–3 more real-world examples** for both?



------