# Challenge 02 - Directory Builder

## Difficulty

Beginner

---

## Objective

Build a clean Linux project folder structure using only terminal commands.

This challenge tests your ability to:

* Create directories
* Create nested directories
* Create files
* Copy files
* Move files
* Rename files
* Verify file structures
* Delete test files safely

---

## Mission Brief

You are building a practice workspace for a Linux student.

Create this structure inside your home directory:

```text
linux-school-challenges/
└── directory-builder/
    ├── notes/
    │   ├── day-01.txt
    │   └── day-02.txt
    ├── projects/
    │   └── linux/
    │       └── module-02/
    │           └── summary.txt
    ├── logs/
    │   └── activity.log
    └── archive/
        └── notes-backup.txt
```

---

## Rules

You may only use the terminal.

Allowed commands:

```bash
cd
pwd
ls
ls -la
mkdir
mkdir -p
touch
echo
cat
cp
mv
rm
rm -r
find
tree
```

Do not use the file manager.

---

## Task 1: Start From Home

Run:

```bash
cd ~
pwd
```

Expected example:

```text
/home/m4ck
```

---

## Task 2: Create The Main Challenge Folder

Run:

```bash
mkdir -p linux-school-challenges/directory-builder
cd linux-school-challenges/directory-builder
pwd
```

---

## Task 3: Create The Main Directories

Run:

```bash
mkdir notes logs archive
mkdir -p projects/linux/module-02
```

Verify:

```bash
ls
find .
```

You should see:

```text
./notes
./logs
./archive
./projects
./projects/linux
./projects/linux/module-02
```

---

## Task 4: Create The Required Files

Run:

```bash
touch notes/day-01.txt
touch notes/day-02.txt
touch logs/activity.log
touch projects/linux/module-02/summary.txt
```

Verify:

```bash
find . -type f
```

You should see:

```text
./notes/day-01.txt
./notes/day-02.txt
./logs/activity.log
./projects/linux/module-02/summary.txt
```

---

## Task 5: Add Content To The Files

Run:

```bash
echo "Day 01: Practiced creating files and directories." > notes/day-01.txt
echo "Day 02: Practiced copying, moving, and renaming files." > notes/day-02.txt
echo "INFO: Directory Builder challenge started." > logs/activity.log
echo "Module 02 focused on Linux files and directories." > projects/linux/module-02/summary.txt
```

Verify:

```bash
cat notes/day-01.txt
cat notes/day-02.txt
cat logs/activity.log
cat projects/linux/module-02/summary.txt
```

---

## Task 6: Copy A File Into Archive

Copy `day-01.txt` into the archive folder:

```bash
cp notes/day-01.txt archive/notes-backup.txt
```

Verify:

```bash
ls -la archive
cat archive/notes-backup.txt
```

---

## Task 7: Rename A File

Rename `day-02.txt` to `second-day.txt`:

```bash
mv notes/day-02.txt notes/second-day.txt
```

Verify:

```bash
ls -la notes
```

---

## Task 8: Move A File

Move `summary.txt` into the main challenge folder and rename it to `module-summary.txt`:

```bash
mv projects/linux/module-02/summary.txt module-summary.txt
```

Verify:

```bash
ls
ls projects/linux/module-02
cat module-summary.txt
```

---

## Task 9: Show The Final Structure

Try:

```bash
tree ~/linux-school-challenges/directory-builder
```

If `tree` is not installed, use:

```bash
find ~/linux-school-challenges/directory-builder
```

Your final structure should include:

```text
directory-builder/
├── archive/
│   └── notes-backup.txt
├── logs/
│   └── activity.log
├── module-summary.txt
├── notes/
│   ├── day-01.txt
│   └── second-day.txt
└── projects/
    └── linux/
        └── module-02/
```

---

## Bonus Task

Add one more log entry:

```bash
echo "INFO: Directory Builder challenge completed." >> logs/activity.log
cat logs/activity.log
```

Question:

```text
What is the difference between > and >>?
```

---

## Challenge Questions

Answer these in your own words:

1. What command created the main directories?
2. What command created nested directories?
3. What command created empty files?
4. What command copied a file?
5. What command renamed a file?
6. What command moved a file?
7. What command displayed file contents?
8. What command showed the full structure?
9. Why is `mkdir -p` useful?
10. Why should you verify files before deleting or moving anything?

---

## Completion Standard

You completed this challenge if you can:

* Build the required directory structure
* Create all required files
* Add text to files
* Copy a file into the archive folder
* Rename a file
* Move a file
* Show the final structure with `tree` or `find`
* Explain each command used

---

## Cleanup Optional

Only run this if you want to delete the challenge folder:

```bash
rm -r ~/linux-school-challenges/directory-builder
```

Warning:

```text
This deletes the directory-builder folder and everything inside it.
Read the command carefully before pressing Enter.
```
