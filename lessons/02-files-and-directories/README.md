# 02 - Files and Directories

## Objective

This module teaches how to create, view, copy, move, rename, and delete files and directories in Linux.

By the end of this module, you should understand:

* How to create files
* How to create directories
* How to copy files
* How to move files
* How to rename files
* How to delete files
* How to safely delete directories
* How to view file contents from the terminal

---

## Commands Covered

```bash
touch
mkdir
mkdir -p
cp
mv
rm
rm -r
cat
less
head
tail
ls
pwd
cd
```

---

## Core Idea

Linux treats almost everything like a file.

You will constantly work with:

* Files
* Directories
* Paths
* Text files
* Config files
* Logs
* Scripts

This module teaches the foundation for managing them from the terminal.

---

## File vs Directory

| Item      | Meaning                                         |
| --------- | ----------------------------------------------- |
| File      | A single item that stores data                  |
| Directory | A folder that stores files or other directories |

Example file:

```text
notes.txt
```

Example directory:

```text
Documents
```

---

## Safety Warning

Some Linux commands can permanently delete files.

Be careful with:

```bash
rm
rm -r
sudo rm
```

Before deleting anything, ask yourself:

1. Am I in the right directory?
2. Am I deleting the right file?
3. Do I understand what this command does?
4. Can I recover this if I make a mistake?

---

## Module Files

| File                                                          | Purpose                 |
| ------------------------------------------------------------- | ----------------------- |
| `lesson.md`                                                   | Full explanation        |
| `practice.md`                                                 | Guided command practice |
| `../../labs/lab-03-files-and-directories.md`                  | Hands-on lab            |
| `../../challenges/beginner/challenge-02-directory-builder.md` | Beginner challenge      |
| `../../quizzes/quiz-03-files-and-directories.md`              | Knowledge check         |

---

## Completion Standard

You complete this module when you can confidently create, move, copy, rename, view, and delete files from the terminal.
