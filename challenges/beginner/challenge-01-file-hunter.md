# Challenge 01 - File Hunter

## Difficulty

Beginner

---

## Objective

Prove that you can create, find, and move through directories using only the Linux terminal.

This challenge tests your ability to:

* Create directories
* Create files
* Move through folders
* Check your current location
* List files
* Verify a file structure

---

## Mission Brief

You are building a small file investigation area.

Your mission is to create this structure inside your home directory:

```text
linux-school-challenges/
└── file-hunter/
    ├── intel/
    │   └── clue.txt
    ├── logs/
    │   └── system.log
    └── reports/
        └── final-report.txt
```

---

## Rules

You may only use the terminal.

You may use these commands:

```bash
mkdir
touch
cd
pwd
ls
ls -la
tree
find
```

Do not use the file manager.

Do not manually create folders by clicking.

---

## Task 1: Start From Home

Run:

```bash
cd ~
pwd
```

You should see your home directory.

Example:

```text
/home/m4ck
```

---

## Task 2: Create The Main Challenge Folder

Create the main folder:

```bash
mkdir -p linux-school-challenges/file-hunter
```

Move into it:

```bash
cd linux-school-challenges/file-hunter
pwd
```

---

## Task 3: Create The Mission Directories

Create the three required directories:

```bash
mkdir intel logs reports
```

Verify them:

```bash
ls
```

You should see:

```text
intel  logs  reports
```

---

## Task 4: Create The Required Files

Create one file inside each directory:

```bash
touch intel/clue.txt
touch logs/system.log
touch reports/final-report.txt
```

---

## Task 5: Verify Each File

Run:

```bash
ls -la intel
ls -la logs
ls -la reports
```

You should see:

```text
clue.txt
system.log
final-report.txt
```

---

## Task 6: Move Into Each Directory

Move into the `intel` directory:

```bash
cd ~/linux-school-challenges/file-hunter/intel
pwd
ls -la
```

Move into the `logs` directory:

```bash
cd ~/linux-school-challenges/file-hunter/logs
pwd
ls -la
```

Move into the `reports` directory:

```bash
cd ~/linux-school-challenges/file-hunter/reports
pwd
ls -la
```

Return to the main challenge folder:

```bash
cd ~/linux-school-challenges/file-hunter
pwd
```

---

## Task 7: Show The Full Structure

Try:

```bash
tree ~/linux-school-challenges/file-hunter
```

If `tree` is not installed, use:

```bash
find ~/linux-school-challenges/file-hunter
```

Expected result:

```text
file-hunter
├── intel
│   └── clue.txt
├── logs
│   └── system.log
└── reports
    └── final-report.txt
```

---

## Bonus Task

From your home directory, list only the files inside the challenge folder.

Run:

```bash
cd ~
find linux-school-challenges/file-hunter -type f
```

Expected output:

```text
linux-school-challenges/file-hunter/intel/clue.txt
linux-school-challenges/file-hunter/logs/system.log
linux-school-challenges/file-hunter/reports/final-report.txt
```

---

## Challenge Questions

Answer these in your own words:

1. What command created the directories?
2. What command created the files?
3. What command showed your current location?
4. What command listed the files?
5. What is the difference between `tree` and `find`?
6. Why is it useful to start from your home directory?
7. What does `-type f` mean in the `find` command?

---

## Completion Standard

You completed this challenge if you can:

* Create the full folder structure
* Create all required files
* Move into each directory
* Prove your location with `pwd`
* Verify the files with `ls -la`
* Show the full structure with `tree` or `find`
* Explain what each command did

---

## Cleanup Optional

Only run this if you want to delete the challenge files:

```bash
rm -r ~/linux-school-challenges/file-hunter
```

Warning:

```text
The `rm -r` command deletes folders and everything inside them. Read the command carefully before pressing Enter.
```
