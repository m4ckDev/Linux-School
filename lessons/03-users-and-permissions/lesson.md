# Lesson 03 - Users and Permissions

## Objective

This lesson teaches how Linux users, groups, ownership, and file permissions work.

By the end of this lesson, you should be able to:

* Identify your current user
* View your user ID and group ID
* Understand file owners and groups
* Read Linux permission strings
* Understand read, write, and execute permissions
* Understand numeric permissions
* Use `chmod` safely
* Understand what `chown` does
* Troubleshoot basic permission issues

---

## 1. Linux Is A Multi-User System

Linux is designed to support multiple users.

Each user can have different access to files, directories, commands, and system resources.

This is why permissions matter.

Linux needs to know:

1. Who owns the file
2. What group owns the file
3. What the owner can do
4. What the group can do
5. What everyone else can do

---

## 2. Check Your Current User

Use:

```bash
whoami
```

Example output:

```text
m4ck
```

This tells you which user account you are currently using.

---

## 3. View User And Group Information

Use:

```bash
id
```

Example output:

```text
uid=1000(m4ck) gid=1000(m4ck) groups=1000(m4ck),27(sudo)
```

Breakdown:

| Part     | Meaning                    |
| -------- | -------------------------- |
| `uid`    | User ID                    |
| `gid`    | Primary group ID           |
| `groups` | Groups the user belongs to |

---

## 4. View Your Groups

Use:

```bash
groups
```

Example output:

```text
m4ck sudo
```

This shows the groups your current user belongs to.

Groups help Linux assign permissions to multiple users at once.

---

## 5. Create A Practice File

Start in your home directory:

```bash
cd ~
mkdir -p linux-school-practice/permissions-lesson
cd linux-school-practice/permissions-lesson
```

Create a file:

```bash
touch notes.txt
```

Add text:

```bash
echo "Linux permissions practice" > notes.txt
```

---

## 6. View File Permissions

Run:

```bash
ls -l
```

Example output:

```text
-rw-r--r-- 1 m4ck m4ck 27 Jun 05 notes.txt
```

This line gives you important file information.

| Section      | Meaning                   |
| ------------ | ------------------------- |
| `-rw-r--r--` | File type and permissions |
| `1`          | Number of links           |
| `m4ck`       | Owner                     |
| `m4ck`       | Group                     |
| `27`         | File size                 |
| `Jun 05`     | Modified date             |
| `notes.txt`  | File name                 |

---

## 7. Understand The First Character

The first character tells you the file type.

| Symbol | Meaning      |
| ------ | ------------ |
| `-`    | Regular file |
| `d`    | Directory    |
| `l`    | Link         |

Examples:

```text
-rw-r--r--  file
drwxr-xr-x  directory
lrwxrwxrwx  symbolic link
```

---

## 8. Understand Permission Groups

Look at this permission string:

```text
-rw-r--r--
```

Break it apart:

```text
-   rw-   r--   r--
│    │     │     │
│    │     │     └── Others
│    │     └──────── Group
│    └────────────── Owner/User
└─────────────────── File type
```

Linux permissions are grouped like this:

| Section    | Meaning                            |
| ---------- | ---------------------------------- |
| Owner/User | Permissions for the file owner     |
| Group      | Permissions for the assigned group |
| Others     | Permissions for everyone else      |

---

## 9. Understand Permission Letters

Linux uses three main permission letters.

| Letter | Permission | File Meaning              | Directory Meaning                              |
| ------ | ---------- | ------------------------- | ---------------------------------------------- |
| `r`    | Read       | Can view file contents    | Can list directory contents                    |
| `w`    | Write      | Can modify file           | Can create, delete, or rename inside directory |
| `x`    | Execute    | Can run file as a program | Can enter the directory                        |

Example:

```text
rw-
```

This means:

```text
read and write, but not execute
```

Example:

```text
r-x
```

This means:

```text
read and execute, but not write
```

---

## 10. Numeric Permissions

Linux permissions can also be represented with numbers.

| Number | Permission    |
| ------ | ------------- |
| 4      | Read          |
| 2      | Write         |
| 1      | Execute       |
| 0      | No permission |

You add the numbers together.

| Value | Meaning                |
| ----- | ---------------------- |
| 7     | Read + Write + Execute |
| 6     | Read + Write           |
| 5     | Read + Execute         |
| 4     | Read only              |
| 0     | No access              |

---

## 11. Common Numeric Permissions

| Permission | Meaning                                                          |
| ---------- | ---------------------------------------------------------------- |
| `644`      | Owner can read/write. Group and others can read.                 |
| `600`      | Owner can read/write. Nobody else has access.                    |
| `755`      | Owner can read/write/execute. Group and others can read/execute. |
| `700`      | Owner has full access. Nobody else has access.                   |
| `777`      | Everyone has full access. Usually unsafe.                        |

---

## 12. Change Permissions With `chmod`

Use `chmod` to change file permissions.

Set `notes.txt` to `644`:

```bash
chmod 644 notes.txt
ls -l notes.txt
```

Expected permission:

```text
-rw-r--r--
```

Set it to owner-only access:

```bash
chmod 600 notes.txt
ls -l notes.txt
```

Expected permission:

```text
-rw-------
```

---

## 13. Make A Script Executable

Create a script:

```bash
echo '#!/bin/bash' > hello.sh
echo 'echo "Hello from Linux School"' >> hello.sh
```

Check permissions:

```bash
ls -l hello.sh
```

Try to run it:

```bash
./hello.sh
```

If it fails, it is probably not executable yet.

Add execute permission:

```bash
chmod +x hello.sh
```

Run it again:

```bash
./hello.sh
```

Expected output:

```text
Hello from Linux School
```

---

## 14. Symbolic Permission Changes

You can also use letters with `chmod`.

| Command          | Meaning                 |
| ---------------- | ----------------------- |
| `chmod u+x file` | Add execute for user    |
| `chmod g+w file` | Add write for group     |
| `chmod o-r file` | Remove read from others |
| `chmod a+r file` | Add read for everyone   |

Symbols:

| Symbol | Meaning    |
| ------ | ---------- |
| `u`    | User/owner |
| `g`    | Group      |
| `o`    | Others     |
| `a`    | All        |

---

## 15. Understand Ownership

Every file has an owner and a group.

View ownership:

```bash
ls -l
```

Example:

```text
-rw-r--r-- 1 m4ck m4ck 27 Jun 05 notes.txt
```

The first `m4ck` is the owner.

The second `m4ck` is the group.

---

## 16. Change Ownership With `chown`

The `chown` command changes file ownership.

Example format:

```bash
sudo chown user:group file
```

Example:

```bash
sudo chown m4ck:m4ck notes.txt
```

Important:

Only use `chown` when you understand what ownership should be.

Changing ownership on system files can break applications or services.

---

## 17. Permission Denied Errors

A common Linux error is:

```text
Permission denied
```

This usually means one of these is true:

| Cause                              | Example                              |
| ---------------------------------- | ------------------------------------ |
| You do not have read permission    | Trying to open a protected file      |
| You do not have write permission   | Trying to edit a protected file      |
| You do not have execute permission | Trying to run a script               |
| You are not the owner              | Trying to modify someone else's file |
| You need elevated permission       | Trying to change system files        |

---

## 18. Basic Troubleshooting Flow

When permissions fail, do this:

```bash
whoami
id
ls -l filename
```

Ask:

1. Who am I?
2. Who owns the file?
3. What group owns the file?
4. What permissions are set?
5. Am I trying to read, write, or execute?
6. Do I need `chmod`, `chown`, or `sudo`?

Do not blindly run:

```bash
chmod 777 filename
```

That gives everyone full access.

---

## 19. Why `chmod 777` Is Usually Bad

`chmod 777` means:

| User Type | Permissions          |
| --------- | -------------------- |
| Owner     | Read, write, execute |
| Group     | Read, write, execute |
| Others    | Read, write, execute |

That means everyone can modify or run the file.

This can create security problems.

Use the least permission needed.

---

## 20. Safe Permission Habits

Use these habits:

1. Check permissions before changing them.
2. Use `ls -l` often.
3. Avoid `chmod 777`.
4. Use `chmod +x` for scripts when needed.
5. Use numeric permissions only when you understand the result.
6. Be careful with `sudo chmod` and `sudo chown`.
7. Do not change ownership of system folders unless you know why.

---

## Lesson Summary

| Command         | Purpose                                |
| --------------- | -------------------------------------- |
| `whoami`        | Show current user                      |
| `id`            | Show user ID and group information     |
| `groups`        | Show group membership                  |
| `ls -l`         | Show permissions and ownership         |
| `chmod`         | Change permissions                     |
| `chmod +x file` | Make a file executable                 |
| `chown`         | Change ownership                       |
| `sudo`          | Run a command with elevated privileges |

---

## Key Takeaway

Linux permissions answer three questions:

```text
Who owns it?
Who is allowed to use it?
What are they allowed to do?
```

Before changing permissions, inspect first:

```bash
whoami
id
ls -l
```
