#linuxcards-A -- Commands explore in depth. 

----
C1: ps -ef
Command :::   ps -ef 

ps -ef is your snapshot tool — a single frame of the system’s movie. For continuous monitoring,

-----  

C2 : ps -ef
#continueLearning: // top, htop, or pidstat

-----  

C3 : ps -ef
ps -ef --forest	Display processes in tree hierarchy.

ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem	Show top memory consumers.

-----  

C4 :  ps -ef
 `ps -ef` command, the Linux equivalent of peeking behind the curtain to see what all your system processes are secretly doing.

Let’s break it down properly, not the half-baked way most people learn it.

---

### **Command:**

```bash
ps -ef
```

**Meaning:**  
It shows a **full-format listing** of **all running processes** on the system.

---

### **Option Breakdown:**

|Option|Meaning|Description|
|---|---|---|
|`-e`|**Every process**|Shows processes for _all_ users (system-wide). Equivalent to `-A`.|
|`-f`|**Full-format listing**|Displays detailed info like UID, PID, PPID, start time, and command path.|

---

### **Typical Output Example:**

```bash
UID        PID  PPID  C STIME TTY          TIME CMD
root         1     0  0 10:12 ?        00:00:01 /usr/lib/systemd/systemd
root       532     1  0 10:12 ?        00:00:00 /usr/lib/systemd/systemd-journald
apache    1832   732  0 10:30 ?        00:00:02 /usr/sbin/httpd -DFOREGROUND
user1     2205  1904  1 10:40 pts/0    00:00:00 ps -ef
```

---

### **Column Explanation:**

|Column|Full Form|Description|
|---|---|---|
|`UID`|**User ID**|The user who owns the process.|
|`PID`|**Process ID**|Unique identifier of the process.|
|`PPID`|**Parent Process ID**|The PID of the process that started this one.|
|`C`|**CPU Utilization**|Percentage of CPU used by the process.|
|`STIME`|**Start Time**|When the process started.|
|`TTY`|**Controlling Terminal**|Terminal associated with the process (if any).|
|`TIME`|**CPU Time**|Total CPU time used since the process started.|
|`CMD`|**Command**|The command with its full arguments that started the process.|

---

### **Useful Filters:**

|Command|Description|
|---|---|
|`ps -ef|grep nginx`|
|`ps -ef|grep root`|
|`ps -ef --forest`|Display processes in tree hierarchy.|
|`ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem`|Show top memory consumers.|

---

### **Bonus: Real-time Cousin**

If you want _live updates_ instead of static snapshots:

```bash
top
```

or the cooler version:

```bash
htop
```


-----  

C5  : ps -ef --forest // how the forest look like

root         1     0  0 10:12 ?        00:00:01 /usr/lib/systemd/systemd
├─systemd-journal
├─systemd-udevd
├─sshd
│  ├─sshd
│  │  ├─bash
│  │  │  └─ps -ef --forest
│  │  └─bash
│  └─sshd
├─crond
└─NetworkManager
   └─dhclient


-----  

C6  

#Later explore - gpt -> Ps -ef command details

-----  

C7  


-----  

C8  


-----  

C9  


-----  

C10  


-----  

C11  


-----  

C12  


-----  

C13  


-----  

C14  


-----  

C15  


-----  

C16  


-----  

C17  


-----  

C18  


-----  

C19  


-----  

C20  


-----  

C21  


-----  

C22  


-----  

C23  


-----  

C24  


-----  

C25  


-----  

C26  


-----  

C27  


-----  

C28  


-----  

C29  


-----  

C30  


-----  

C31  


-----  

C32  


-----  

C33  


-----  

C34  


-----  

C35  


-----  

C36  


-----  

C37  


-----  

C38  


-----  

C39  


-----  

C40  


-----  

C41  


-----  

C42  


-----  

C43  


-----  

C44  


-----  

C45  


-----  

C46  


-----  

C47  


-----  

C48  


-----  

C49  


-----  

C50  


-----  

C51  


-----  

C52  


-----  

C53  


-----  

C54  


-----  

C55  


-----  

C56  


-----  

C57  


-----  

C58  


-----  

C59  


-----  

C60  


-----  

C61  


-----  

C62  


-----  

C63  


-----  

C64  


-----  

C65  


-----  

C66  


-----  

C67  


-----  

C68  


-----  

C69  


-----  

C70  


-----  

C71  


-----  

C72  


-----  

C73  


-----  

C74  


-----  

C75  


-----  

C76  


-----  

C77  


-----  

C78  


-----  

C79  


-----  

C80  


-----  

C81  


-----  

C82  


-----  

C83  


-----  

C84  


-----  

C85  


-----  

C86  


-----  

C87  


-----  

C88  


-----  

C89  


-----  

C90  


-----  

C91  


-----  

C92  


-----  

C93  


-----  

C94  


-----  

C95  


-----  

C96  


-----  

C97  


-----  

C98  


-----  

C99  


-----  

C100