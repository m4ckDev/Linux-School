# Lesson 02 - Files and Directories

## Objective

This lesson teaches how to create, view, copy, move, rename, and delete files and directories from the Linux terminal.

By the end of this lesson, you should be able to:

* Create files
* Create directories
* Create nested directories
* Copy files
* Move files
* Rename files
* Delete files
* Delete directories
* View file contents safely

---

## 1. Files And Directories

In Linux, you work with two basic items all the time:

| Item      | Meaning                                            |
| --------- | -------------------------------------------------- |
| File      | Stores data, text, scripts, logs, or configuration |
| Directory | A folder that stores files or other directories    |

Example file:

```text
notes.txt
```

Example directory:

```text
Documents
```

---

## 2. Create A File With `touch`

Use `touch` to create an empty file.

```bash
touch notes.txt
```

Verify it exists:

```bash
ls
```

You should see:

```text
notes.txt
```

`touch` is commonly used when you need to quickly create a blank file.

---

## 3. Create A Directory With `mkdir`

Use `mkdir` to create a directory.

```bash
mkdir practice
```

Verify it exists:

```bash
ls
```

You should see:

```text
practice
```

---

## 4. Create Nested Directories With `mkdir -p`

Use `mkdir -p` to create multiple directory levels at once.

```bash
mkdir -p school/linux/lesson02
```

This creates:

```text
school/
└── linux/
    └── lesson02/
```

The `-p` option also prevents errors if part of the path already exists.

---

## 5. Copy Files With `cp`

Use `cp` to copy a file.

```bash
cp notes.txt notes-copy.txt
```

Verify:

```bash
ls
```

You should see:

```text
notes.txt
notes-copy.txt
```

The original file remains. The copy is new.

---

## 6. Move Files With `mv`

Use `mv` to move a file into a directory.

```bash
mv notes-copy.txt practice/
```

Verify:

```bash
ls practice
```

You should see:

```text
notes-copy.txt
```

---

## 7. Rename Files With `mv`

The `mv` command can also rename files.

```bash
mv notes.txt linux-notes.txt
```

Verify:

```bash
ls
```

You should see:

```text
linux-notes.txt
```

Think of `mv` as:

```text
move or rename
```

---

## 8. View File Contents With `cat`

Create a file with text:

```bash
echo "Linux School is active." > message.txt
```

View it:

```bash
cat message.txt
```

Expected output:

```text
Linux School is active.
```

`cat` is useful for short files.

---

## 9. View Longer Files With `less`

Use `less` when a file is too long to comfortably read with `cat`.

```bash
less message.txt
```

Inside `less`:

| Key   | Action    |
| ----- | --------- |
| Space | Move down |
| `b`   | Move back |
| `q`   | Quit      |

---

## 10. View The Start Of A File With `head`

Use `head` to show the first lines of a file.

```bash
head message.txt
```

Show the first 5 lines:

```bash
head -n 5 message.txt
```

---

## 11. View The End Of A File With `tail`

Use `tail` to show the last lines of a file.

```bash
tail message.txt
```

Show the last 5 lines:

```bash
tail -n 5 message.txt
```

`tail` is useful for logs because the newest entries are usually at the bottom.

---

## 12. Delete Files With `rm`

Use `rm` to delete a file.

```bash
rm message.txt
```

Warning:

```text
rm deletes files.
There is usually no recycle bin in the terminal.
Read the command before pressing Enter.
```

---

## 13. Delete Directories With `rm -r`

Use `rm -r` to delete a directory and everything inside it.

```bash
rm -r practice
```

The `-r` means recursive.

That means Linux deletes the folder and works through everything inside it.

Be careful with:

```bash
rm -r
sudo rm -r
rm -rf
```

---

## 14. Safe Deletion Habit

Before deleting anything, run:

```bash
pwd
ls
```

Ask:

1. Am I in the correct directory?
2. Did I type the correct file or folder name?
3. Do I understand what this command will remove?

---

## 15. Common File Commands

| Command          | Purpose                   |
| ---------------- | ------------------------- |
| `touch file.txt` | Create an empty file      |
| `mkdir folder`   | Create a directory        |
| `mkdir -p a/b/c` | Create nested directories |
| `cp file copy`   | Copy a file               |
| `mv old new`     | Rename or move            |
| `rm file`        | Delete a file             |
| `rm -r folder`   | Delete a directory        |
| `cat file`       | Print file contents       |
| `less file`      | View file interactively   |
| `head file`      | Show the start of a file  |
| `tail file`      | Show the end of a file    |

---

## Lesson Summary

Files and directories are the foundation of Linux.

The commands in this lesson allow you to create, organize, inspect, move, and remove data from the terminal.

The most important safety rule is simple:

```text
Slow down before deleting anything.
```

Use:

```bash
pwd
ls
```

before running destructive commands like:

```bash
rm
rm -r
```
