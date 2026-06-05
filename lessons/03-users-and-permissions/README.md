# 03 - Users and Permissions

## Objective

This module teaches how Linux users, groups, ownership, and file permissions work.

By the end of this module, you should understand:

* How Linux identifies users
* How Linux identifies groups
* How to check your user account
* How to read file ownership
* How to read file permissions
* How permission letters work
* How numeric permissions work
* How to change permissions with `chmod`
* How to understand ownership with `chown`
* How to troubleshoot basic permission problems

---

## Commands Covered

```bash
whoami
id
groups
ls -l
chmod
chown
sudo
touch
mkdir
cat
echo
```

---

## Core Idea

Linux is a multi-user operating system.

That means Linux needs to know:

1. Who owns a file
2. What group owns a file
3. Who can read the file
4. Who can write to the file
5. Who can execute the file

Permissions control what users can and cannot do.

---

## Permission Categories

Linux permissions are split into three categories:

| Category | Meaning                        |
| -------- | ------------------------------ |
| User     | The owner of the file          |
| Group    | The group assigned to the file |
| Others   | Everyone else                  |

---

## Permission Types

Linux uses three basic permission types:

| Permission | Symbol | Meaning                                       |
| ---------- | ------ | --------------------------------------------- |
| Read       | `r`    | View file contents or list directory contents |
| Write      | `w`    | Modify a file or change directory contents    |
| Execute    | `x`    | Run a file or enter a directory               |

---

## Example Permission Line

When you run:

```bash
ls -l
```

You may see something like:

```text
-rw-r--r-- 1 m4ck m4ck 120 Jun 05 notes.txt
```

Breakdown:

| Part         | Meaning          |
| ------------ | ---------------- |
| `-rw-r--r--` | File permissions |
| `m4ck`       | File owner       |
| `m4ck`       | File group       |
| `120`        | File size        |
| `notes.txt`  | File name        |

---

## Numeric Permissions Preview

Linux permissions can also be shown with numbers.

| Number | Permission |
| ------ | ---------- |
| 4      | Read       |
| 2      | Write      |
| 1      | Execute    |

Examples:

| Number | Meaning                                                         |
| ------ | --------------------------------------------------------------- |
| `644`  | Owner can read/write, group and others can read                 |
| `755`  | Owner can read/write/execute, group and others can read/execute |
| `600`  | Owner can read/write, nobody else has access                    |

---

## Why Permissions Matter

Permissions protect files, scripts, logs, applications, and system settings.

Bad permissions can cause:

* Security problems
* Broken scripts
* Access denied errors
* Exposed private files
* System misconfiguration

Good Linux users know how to read permissions before changing them.

---

## Safety Warning

Be careful with:

```bash
chmod 777
sudo chmod
sudo chown
rm -r
```

Do not blindly give full access to files.

`chmod 777` means everyone can read, write, and execute.

That is usually not the right answer.

---

## Module Files

| File                                                       | Purpose                 |
| ---------------------------------------------------------- | ----------------------- |
| `lesson.md`                                                | Full explanation        |
| `practice.md`                                              | Guided command practice |
| `../../labs/lab-04-users-and-permissions.md`               | Hands-on lab            |
| `../../challenges/beginner/challenge-03-permission-fix.md` | Beginner challenge      |
| `../../quizzes/quiz-04-users-and-permissions.md`           | Knowledge check         |

---

## Completion Standard

You complete this module when you can read Linux permissions, explain ownership, use `chmod` safely, and troubleshoot basic permission problems.
