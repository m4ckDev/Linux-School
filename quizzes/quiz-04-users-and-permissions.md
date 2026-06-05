# Quiz 04 — Users and Permissions

## Purpose

This quiz checks your understanding of Linux users, groups, ownership, and permissions.

Complete this quiz after finishing:

- Module 03 lesson
- Module 03 practice
- Lab 04
- Challenge 03

---

## Topics Covered

This quiz covers:

- Current user identity
- User IDs and group IDs
- File ownership
- Group ownership
- Read, write, and execute permissions
- Symbolic permissions
- Numeric permissions
- Directory permissions
- Safe permission choices
- Permission troubleshooting

---

## Part 1 — Multiple Choice

### 1. Which command shows the current logged-in user?

A. `pwd`  
B. `whoami`  
C. `chmod`  
D. `stat`

---

### 2. Which command shows user ID, group ID, and group membership?

A. `id`  
B. `ls`  
C. `cat`  
D. `touch`

---

### 3. Which command shows the groups your user belongs to?

A. `chmod`  
B. `groups`  
C. `mkdir`  
D. `rm`

---

### 4. In this permission string, what does the first character mean?

```text
-rw-r--r--
```

A. The file is hidden  
B. The item is a regular file  
C. The item is executable  
D. The item is owned by root

---

### 5. In this permission string, what does `d` mean?

```text
drwxr-xr-x
```

A. Deleted  
B. Directory  
C. Disabled  
D. Duplicate

---

### 6. What does `r` mean in Linux permissions?

A. Run  
B. Read  
C. Remove  
D. Rename

---

### 7. What does `w` mean in Linux permissions?

A. Write  
B. Watch  
C. Wait  
D. Who

---

### 8. What does `x` mean on a file?

A. The file is deleted  
B. The file can be executed  
C. The file is hidden  
D. The file is empty

---

### 9. What does `x` mean on a directory?

A. The directory can be entered or searched  
B. The directory is encrypted  
C. The directory is empty  
D. The directory is executable like a program

---

### 10. Which command changes file permissions?

A. `chown`  
B. `chmod`  
C. `groups`  
D. `whoami`

---

## Part 2 — Numeric Permissions

### 11. What does `chmod 644 file.txt` mean?

A. Owner can read/write, group can read, others can read  
B. Everyone can read/write/execute  
C. Owner only can read/write  
D. Owner can execute, others cannot read

---

### 12. What does `chmod 600 secrets.txt` mean?

A. Everyone can read the file  
B. Only the owner can read and write the file  
C. Only the group can edit the file  
D. Everyone can execute the file

---

### 13. What does `chmod 755 script.sh` mean?

A. Owner can read/write/execute, group and others can read/execute  
B. Everyone can write to the file  
C. Only the owner can read the file  
D. The file has no permissions

---

### 14. What does `chmod 777 file.txt` mean?

A. Only root can access the file  
B. Everyone can read, write, and execute the file  
C. The file is private  
D. The file is read-only

---

### 15. Why is `777` usually unsafe?

A. It blocks all users  
B. It lets everyone read, write, and execute  
C. It deletes the file  
D. It changes the file owner

---

### 16. Which permission is best for a private file?

A. `777`  
B. `755`  
C. `600`  
D. `000`

---

### 17. Which permission is common for a normal public read-only file?

A. `644`  
B. `700`  
C. `777`  
D. `111`

---

### 18. Which permission is common for an executable script?

A. `000`  
B. `444`  
C. `755`  
D. `222`

---

### 19. Which permission is best for a private directory?

A. `777`  
B. `700`  
C. `644`  
D. `600`

---

### 20. Which permission is safer for a log file?

A. `777`  
B. `640`  
C. `111`  
D. `000`

---

## Part 3 — Symbolic Permissions

### 21. What does this command do?

```bash
chmod u+x script.sh
```

A. Adds execute permission for the owner  
B. Removes execute permission from everyone  
C. Changes the file owner  
D. Deletes the file

---

### 22. What does this command do?

```bash
chmod g-w file.txt
```

A. Adds write permission to the group  
B. Removes write permission from the group  
C. Removes the group owner  
D. Shows the group ID

---

### 23. What does this command do?

```bash
chmod o-rwx private.txt
```

A. Gives others full access  
B. Removes all permissions from others  
C. Deletes the file  
D. Makes the file public

---

### 24. In symbolic permissions, what does `u` mean?

A. User/owner  
B. Utility  
C. Unlock  
D. Unknown

---

### 25. In symbolic permissions, what does `g` mean?

A. General  
B. Group  
C. Guest  
D. Global

---

### 26. In symbolic permissions, what does `o` mean?

A. Owner  
B. Output  
C. Others  
D. Open

---

### 27. In symbolic permissions, what does `a` mean?

A. Admin  
B. All  
C. Access  
D. Archive

---

## Part 4 — Ownership

### 28. Which command changes file ownership?

A. `chmod`  
B. `chown`  
C. `whoami`  
D. `groups`

---

### 29. In this command, what does `student:linuxschool` mean?

```bash
sudo chown student:linuxschool file.txt
```

A. User is `student`, group is `linuxschool`  
B. User is `linuxschool`, group is `student`  
C. File name is `student`  
D. Permission is `linuxschool`

---

### 30. Which command gives detailed file metadata?

A. `stat`  
B. `touch`  
C. `clear`  
D. `pwd`

---

### 31. What two things decide how Linux permissions apply to a file?

A. File name and file size  
B. Owner and group  
C. Date and time  
D. Shell and terminal color

---

## Part 5 — Read the Permission String

Use this permission string:

```text
-rw-r-----
```

### 32. Is this a file or directory?

A. File  
B. Directory  
C. Script only  
D. Unknown

---

### 33. What can the owner do?

A. Read only  
B. Write only  
C. Read and write  
D. Read, write, and execute

---

### 34. What can the group do?

A. Read only  
B. Write only  
C. Execute only  
D. Read and write

---

### 35. What can others do?

A. Read  
B. Write  
C. Execute  
D. Nothing

---

Use this permission string:

```text
drwx------
```

### 36. Is this a file or directory?

A. File  
B. Directory  
C. Symbolic link  
D. Log file

---

### 37. Who can access this directory?

A. Everyone  
B. Group only  
C. Owner only  
D. Others only

---

Use this permission string:

```text
-rwxr-xr-x
```

### 38. What type of file is this commonly used for?

A. Private secret file  
B. Executable script  
C. Read-only note  
D. Empty directory

---

### 39. Can others execute this file?

A. Yes  
B. No

---

### 40. Can the group write to this file?

A. Yes  
B. No

---

## Part 6 — Troubleshooting

### 41. A script will not run with `./start.sh`. What should you check first?

A. Whether it has execute permission  
B. Whether the file is hidden  
C. Whether the terminal is blue  
D. Whether the file is in `/tmp`

---

### 42. A file is set to `000`. What does that mean?

A. Everyone has full access  
B. No permissions are granted  
C. Only root owns it  
D. It is executable

---

### 43. A private file is set to `777`. What is the problem?

A. It is too restricted  
B. It gives everyone full access  
C. It cannot be deleted  
D. It has no owner

---

### 44. A log file is executable. Why might that be a problem?

A. Logs usually do not need execute permission  
B. Logs must always be executable  
C. Logs cannot be read  
D. Logs must be owned by nobody

---

### 45. What is the correct troubleshooting order?

A. Guess, fix, ignore  
B. Delete, recreate, hope  
C. Inspect, fix, verify  
D. Restart, remove, chmod 777

---

## Part 7 — Short Answer

Answer in your own words.

### 46. Why do Linux permissions matter?

---

### 47. What is the difference between `chmod` and `chown`?

---

### 48. Why should beginners avoid using `chmod 777`?

---

### 49. Why is `600` a good permission for private files?

---

### 50. Why does a directory need execute permission?

---

### 51. What command would you use to check detailed file information?

---

### 52. What command would you use to check your current user?

---

### 53. What command would you use to check your group membership?

---

### 54. Explain `rw-r--r--` in plain language.

---

### 55. Explain `rwxr-xr-x` in plain language.

---

## Part 8 — Scenario Questions

### Scenario 1

You have this file:

```text
-rw------- secrets.txt
```

Question:

Is this a safe permission for a private file? Explain why.

---

### Scenario 2

You have this script:

```text
-rw-r--r-- backup.sh
```

Question:

Why might this script fail when running `./backup.sh`?

---

### Scenario 3

You have this file:

```text
-rwxrwxrwx notes.txt
```

Question:

What is wrong with this permission?

---

### Scenario 4

You have this directory:

```text
drwx------ private
```

Question:

Who can enter this directory?

---

### Scenario 5

You have this command:

```bash
chmod 640 report.txt
```

Question:

What can the owner, group, and others do?

---

## Answer Key

### Multiple Choice Answers

| Question | Answer |
|---:|---|
| 1 | B |
| 2 | A |
| 3 | B |
| 4 | B |
| 5 | B |
| 6 | B |
| 7 | A |
| 8 | B |
| 9 | A |
| 10 | B |
| 11 | A |
| 12 | B |
| 13 | A |
| 14 | B |
| 15 | B |
| 16 | C |
| 17 | A |
| 18 | C |
| 19 | B |
| 20 | B |
| 21 | A |
| 22 | B |
| 23 | B |
| 24 | A |
| 25 | B |
| 26 | C |
| 27 | B |
| 28 | B |
| 29 | A |
| 30 | A |
| 31 | B |
| 32 | A |
| 33 | C |
| 34 | A |
| 35 | D |
| 36 | B |
| 37 | C |
| 38 | B |
| 39 | A |
| 40 | B |
| 41 | A |
| 42 | B |
| 43 | B |
| 44 | A |
| 45 | C |

---

## Short Answer Guide

### 46. Why do Linux permissions matter?

Linux permissions control who can read, change, or run files and directories. They protect files from unauthorized access and mistakes.

---

### 47. What is the difference between `chmod` and `chown`?

`chmod` changes permissions.  
`chown` changes ownership.

---

### 48. Why should beginners avoid using `chmod 777`?

Because `777` gives everyone read, write, and execute access. It is usually too open and can create security problems.

---

### 49. Why is `600` a good permission for private files?

Because only the owner can read and write the file. Group and others get no access.

---

### 50. Why does a directory need execute permission?

Execute permission on a directory allows a user to enter or search the directory.

---

### 51. What command would you use to check detailed file information?

```bash
stat filename
```

---

### 52. What command would you use to check your current user?

```bash
whoami
```

---

### 53. What command would you use to check your group membership?

```bash
groups
```

or:

```bash
id
```

---

### 54. Explain `rw-r--r--` in plain language.

The owner can read and write. The group can read. Others can read.

---

### 55. Explain `rwxr-xr-x` in plain language.

The owner can read, write, and execute. The group can read and execute. Others can read and execute.

---

## Scenario Answer Guide

### Scenario 1

Yes. `-rw-------` means only the owner can read and write the file. That is safe for private files.

---

### Scenario 2

The script may fail because it does not have execute permission. It needs something like:

```bash
chmod 755 backup.sh
```

or:

```bash
chmod u+x backup.sh
```

---

### Scenario 3

`-rwxrwxrwx` is too open for a normal notes file. Everyone can read, write, and execute it. A safer permission would usually be `644`.

---

### Scenario 4

Only the owner can enter the directory.

---

### Scenario 5

For `chmod 640 report.txt`:

- Owner can read and write.
- Group can read.
- Others have no access.

---

## Quiz Complete

If you missed several questions, review:

- `ls -l`
- `chmod`
- `chown`
- `stat`
- Numeric permissions
- Directory execute permission

Key takeaway:

```text
Inspect first.
Fix second.
Verify last.
```
