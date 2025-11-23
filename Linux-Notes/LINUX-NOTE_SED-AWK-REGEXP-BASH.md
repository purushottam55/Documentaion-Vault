----
c1:
[root@node1 ~]# df -Th
Filesystem     Type              Size  Used Avail Use% Mounted on
devtmpfs       devtmpfs          900M     0  900M   0% /dev
tmpfs          tmpfs             910M     0  910M   0% /dev/shm
tmpfs          tmpfs             910M   18M  893M   2% /run
tmpfs          tmpfs             910M     0  910M   0% /sys/fs/cgroup
/dev/sda3      xfs                18G  3.0G   15G  17% /
/dev/sda1      xfs               297M  132M  166M  45% /boot
tmpfs          tmpfs             182M     0  182M   0% /run/user/0
vmhgfs-fuse    fuse.vmhgfs-fuse  239G  220G   20G  92% /mnt/hgfs

To print the use >= 40 

df -h | awk '$5+0 > 40'

// Output will be:

[root@node1 ~]# df -Th | awk '$6+0 > 40'
/dev/sda1      xfs               297M  132M  166M  45% /boot
vmhgfs-fuse    fuse.vmhgfs-fuse  239G  220G   20G  93% /mnt/hgfs

----
C2: from C1

[root@node1 ~]# df -Th | awk 'NR==1 || $6+0 > 40'
Filesystem     Type              Size  Used Avail Use% Mounted on
/dev/sda1      xfs               297M  132M  166M  45% /boot
vmhgfs-fuse    fuse.vmhgfs-fuse  239G  220G   20G  93% /mnt/hgfs

// if you want to print the info with the header


----
c3: from c2

NR → “Number of Record,” basically the current line number.

So NR==1 means the first line only (the header).

|| → logical OR.

If either condition on its sides is true, the line is printed.

$5 → refers to the fifth column in the input (in df -h, it’s the Use% field).

$5+0 → converts something like 45% into the number 45.

Without +0, awk thinks 45% is a string and can’t compare it numerically.

> 40 → self-explanatory: only lines where usage is greater than 40%.

-----

c4: 
Architecture:          x86_64                // 64-bit CPU architecture (standard for modern systems)
CPU op-mode(s):        32-bit, 64-bit        // Supports both 32-bit and 64-bit operation modes
Byte Order:            Little Endian         // Least significant byte stored first (common in Intel/AMD CPUs)
CPU(s):                1                     // Only one logical CPU is available
On-line CPU(s) list:   0                     // CPU ID 0 is active and online
Thread(s) per core:    1                     // Each core handles 1 thread (no hyper-threading here)
Core(s) per socket:    1                     // One core per CPU socket
Socket(s):             1                     // System has one physical CPU socket
NUMA node(s):          1                     // One NUMA node (single memory access domain)
Vendor ID:             AuthenticAMD          // Processor is made by AMD
CPU family:            23                    // CPU family identifier (used internally by OS/drivers)
Model:                 24                    // Specific model number in that family
Model name:            AMD Ryzen 3 3250U with Radeon Graphics // Full CPU name and model
Stepping:              1                     // Revision number of this model
CPU MHz:               2595.056              // Current running clock speed (approx. 2.6 GHz)
BogoMIPS:              5190.11               // Rough measurement of CPU speed used by Linux kernel
Hypervisor vendor:     VMware                // Running inside a VMware virtual machine
Virtualization type:   full                  // Full virtualization (not paravirtual)
L1d cache:             32K                   // Level 1 Data cache = 32 KB
L1i cache:             64K                   // Level 1 Instruction cache = 64 KB
L2 cache:              512K                  // Level 2 cache = 512 KB
L3 cache:              4096K                 // Level 3 cache = 4 MB
NUMA node0 CPU(s):     0                     // CPU 0 belongs to NUMA node 0
Flags:                 fpu vme de pse tsc ... // Supported CPU features like floating-point unit, SSE, AVX, etc.

// someday need to dive deep.



----
c5:

SUID (4) → File execute hone par file owner ke permission se chalti hai.

SGID (2) → File execute hone par file ke group ke permission se chalti hai.

Sticky bit (1) → Mainly directories pe lagta hai; directory me file delete sirf file ka owner ya root hi kar sakta hai.

So:

chmod 4000 file → SUID set

chmod 2000 file → SGID set

chmod 1000 dir → Sticky bit set



---
c6:

In Vim, replacing “Name” with “myname” across the whole file is as easy as typing this in command mode:

:%s/Name/myname/g


Explanation for mortals:

: enters command mode

% means “entire file”

s is for substitute

g means “replace all in each line”



---
c7:
// printf se aise sequencial data form karo. 

[root@node1 ~]# printf "%s\n" 192.168.72.{10..15}
192.168.72.10
192.168.72.11
192.168.72.12
192.168.72.13
192.168.72.14
192.168.72.15

---
c8: from c7     // what if there are number of same series ips you have to replace only specific part of ip. 

Command:

:%s/\.62\./.72./g


: → enter command mode in Vim.

% → operate on every line of the file (not just the current line).

s → short for substitute (replace stuff).

/\.62\./ → the pattern you want to replace:

\. → the literal dot . (dots are special in regex, so you escape it).

62 → the number you want to change.

\. → another literal dot after 62.

/.72./ → the replacement string, literally .72..

g → global, meaning replace all occurrences in each line, not just the first one.

So basically: “Go through the entire file, and everywhere you see .62., turn it into .72..”



----
c9: from c8

let’s untangle the / and \ confusion without making it more cryptic.

In this Vim/sed command:

:%s/\.62\./.72./g


/ (slash)

Acts as a separator.

Syntax of :s (substitute) is:

:s/pattern/replacement/flags


So the first / comes after s → starts the pattern.

The second / → ends the pattern, starts the replacement.

The third / → ends the replacement, starts flags (like g).

Basically: the slashes just divide pattern, replacement, and options.

\ (backslash)

Escapes special characters.

In regex, . normally means “any single character” (like a wildcard).

To literally match a dot . in an IP, you escape it with \..

So \.62\. really means: “dot, 62, dot” literally, not any character-62-any character.

Example:

192.168.62.110 → matches \.62\. → becomes .72. → 192.168.72.110

Without \ → . matches any character, so it could accidentally replace wrong stuff.




---
c10: from c9

why we escape the dots in \.62\. but not in .72.

Here’s the deal:

In the pattern (\.62\.)

. is special in regex → it means “any single character.”

You don’t want “any character”, you want a literal dot in the IP (192.168.62.110).

So you write \. to tell Vim: “Hey, match a real dot, not a wildcard.”

That’s why both dots around 62 are escaped: \.62\.

In the replacement (.72.)

Replacement part does not treat . as special.

You want the output to literally have dots.

No escaping needed, just write .72.

If you wrote \.72\., Vim would literally put the backslashes in the file: 192.168.\72\.110 — clearly wrong.

Rule of thumb:

Pattern: escape special regex characters if you want them literally.

Replacement: write exactly what you want to appear; no escaping needed for dots.



------
c11:   // In vim comment and uncomment lines by regular expression. 


=> To comment lines from line number 2 to 77. 

:2,77s/^/#/
— is Vim magic for saying:

“From line 2 to line 77, put a # at the start of every line.”

Let’s unpack it:

Part	Meaning
:	Enters command mode in Vim
2,77	The line range (from line 2 through 77)
s	Substitute command (like sed’s s/old/new/)
^	Start of each line (regex anchor)
#	What to insert
/	Separator between parts of the command

So effectively, you’re commenting out lines 2–77 — a common move when you want to disable config lines in bulk.

If you ever want to undo that:

in vim code is : 

:2,77s/^#//
That removes the # at the start of those lines.



-----
c12:
#!/bin/bash      // shebang aise likhi jati hai execute karane ke liye.

./sript.sh
bash +x script.sh
sh sript.sh


----
c13:

// below command will deletes the all files except file9 and file10

find . -maxdepth 1 -type f ! -name 'file9' ! -name 'file10' -exec rm -f {} \;

Also see one of:

find . -mindepth 1 ! -name 'testfile3' ! -name 'testfile4' -exec rm -rf {} \;

---

c14:

[root@node1 mydir]# if grep -q "xyz" file1; then     grep "xyz" file1 | while read line; do         echo "yes: $line";     done; else     echo "no"; fi


// Abov line will print if there is line in file. It will come up with yes : line in file 
else no.



---
c15:  //  grep lines in files without hashed enteries

grep -v '^#' filename | grep 'a'

Explanation : 
grep -v '^#' filename

grep → searches for text in a file

-v → invert match; it selects lines that do NOT match the pattern

'^#' → regex meaning: ^ = start of line, # = literal hash. So this matches lines starting with #.

Result → all lines except those starting with #.

| (pipe)

Sends the output of the first command as input to the next command.

grep 'a'

Searches for lines containing the letter a in the input from the previous command.

Effect: Only lines that contain a and do not start with # are printed.


Another method:

grep 'a' filename | grep -v '^#'      // first greps all enteries and then applies grep with pattern.


----

c16: from c15  // lines should print without line spaces.

grep '^#' /etc/pam.d/password-auth | grep -v '^[[:space:]]*$'

[root@node1 mydir]# grep '^#' /etc/pam.d/password-auth | grep -v '^[[:space:]]*$'
#%PAM-1.0
#acceptance 

This file is auto-generated.
# User changes will be destroyed the next time authconfig is run.
# BEGIN ANSIBLE MANAGED BLOCK pam_faillock authfail
# END ANSIBLE MANAGED BLOCK pam_faillock authfail


[root@node1 mydir]# grep -v  '^#' /etc/pam.d/password-auth | grep -v '^[[:space:]]*$'
auth        required      pam_env.so
auth required pam_faillock.so preauth silent audit deny=5 unlock_time=900 even_deny_root
auth        required      pam_faildelay.so delay=2000000
auth        sufficient    pam_unix.so nullok try_first_pass
auth        requisite     pam_succeed_if.so uid >= 1000 quiet_success
auth [default=die] pam_faillock.so authfail audit deny=5 unlock_time=900 even_deny_root
auth        required      pam_deny.so
account     required      pam_unix.so
account     sufficient    pam_localuser.so
account     sufficient    pam_succeed_if.so uid < 1000 quiet
account     required      pam_permit.so
password    requisite     pam_pwquality.so try_first_pass local_users_only retry=3 authtok_type=
password    sufficient    pam_unix.so md5 shadow nullok try_first_pass use_authtok
password    required    pam_pwhistory.so use_authtok remember=5 enforce_for_root
password    required      pam_deny.so
session     optional      pam_keyinit.so revoke
session     required      pam_limits.so
-session     optional      pam_systemd.so
session     [success=1 default=ignore] pam_succeed_if.so service in crond quiet use_uid
session     required      pam_unix.so
[root@node1 mydir]#
[root@node1 mydir]#

----
c17: // in vim 

:g/^#/
:g/^#/ → lists all lines starting with # (global command with a pattern).

----
c18:

# Uncomment commented lines
sed -i 's/^#\(.*kernel\.yam\.ptace.*\)/\1/' filename

# Delete uncommented lines matching kernel.yam.ptace
sed -i '/^[^#]*kernel\.yam\.ptace/d' filename

----
c19:

want to remove duplicate lines in a file while keeping the first occurrence. There are multiple ways in Linux.

1. Using uniq (simplest)         // in testing not worked // may be because of block dependency
sort filename | uniq > temp && mv temp filename


Explanation:

sort filename → sort lines (necessary for uniq to work properly)

uniq → removes consecutive duplicates

> temp && mv temp filename → overwrite the original file

Note: uniq only removes consecutive duplicates, so sorting first ensures all duplicates are adjacent.



2. Using awk (preserves original order)   // It worked. for password-auth.
awk '!seen[$0]++' filename > temp && mv temp filename


Explanation:

seen[$0]++ → tracks each line ($0)

!seen[$0]++ → evaluates to true only for the first occurrence

Keeps the original order of lines


----
c20:  from c19 :  // original order will be lost.
Using sort -u (sorts and removes duplicates)
sort -u filename -o filename


-u → unique

-o filename → write output back to the same file

Drawback: original order is lost because sorting changes line positions


