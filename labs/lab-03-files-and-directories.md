# Lab 03 - Files and Directories

## Objective

Use Linux commands to create, organize, copy, move, rename, view, and delete files and directories.

By the end of this lab, you should be able to:

* Create files
* Create directories
* Create nested directories
* Copy files
* Move files into folders
* Rename files
* View file contents
* Delete files safely
* Delete directories safely
* Verify your work using `ls`, `pwd`, and `find`

---

## Commands Used

```bash
pwd
ls
ls -la
cd
touch
mkdir
mkdir -p
echo
cat
less
head
tail
cp
mv
rm
rm -r
find
```

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

Question:

```text
Why is it useful to start from your home directory before beginning a lab?
```

---

## Task 2: Create The Lab Workspace

Run:

```bash
mkdir -p linux-school-practice/files-lab
cd linux-school-practice/files-lab
pwd
```

You should now be inside:

```text
/home/m4ck/linux-school-practice/files-lab
```

Question:

```text
What did `mkdir -p` do?
```

---

## Task 3: Create Main Directories

Create the main lab folders:

```bash
mkdir notes reports logs scripts archive
```

Verify:

```bash
ls
```

Expected output:

```text
archive  logs  notes  reports  scripts
```

Question:

```text
Which command created the directories?
```

---

## Task 4: Create Files

Create several files:

```bash
touch notes/linux-notes.txt
touch reports/report-01.txt
touch logs/system.log
touch scripts/backup.sh
```

Verify:

```bash
find .
```

Expected files:

```text
./notes/linux-notes.txt
./reports/report-01.txt
./logs/system.log
./scripts/backup.sh
```

Question:

```text
What does `touch` do?
```

---

## Task 5: Add Text To Files

Add text to the notes file:

```bash
echo "Linux School Lab 03" > notes/linux-notes.txt
echo "Files and directories practice" >> notes/linux-notes.txt
echo "Created by using the terminal" >> notes/linux-notes.txt
```

Add text to the report:

```bash
echo "Report 01" > reports/report-01.txt
echo "This report was created during Lab 03." >> reports/report-01.txt
```

Add text to the log:

```bash
echo "INFO: Lab started" > logs/system.log
echo "INFO: Files created" >> logs/system.log
echo "INFO: Directories verified" >> logs/system.log
```

Question:

```text
What is the difference between `>` and `>>`?
```

---

## Task 6: View File Contents

View the notes file:

```bash
cat notes/linux-notes.txt
```

View the report:

```bash
cat reports/report-01.txt
```

View the log:

```bash
cat logs/system.log
```

Question:

```text
When is `cat` useful?
```

---

## Task 7: Use Head And Tail

Run:

```bash
head notes/linux-notes.txt
tail notes/linux-notes.txt
```

Question:

```text
What is the difference between `head` and `tail`?
```

---

## Task 8: Copy A File

Copy the report into the archive folder:

```bash
cp reports/report-01.txt archive/report-01-backup.txt
```

Verify:

```bash
ls -la archive
cat archive/report-01-backup.txt
```

Question:

```text
Did copying remove the original file?
```

---

## Task 9: Move A File

Move the backup script into the archive folder:

```bash
mv scripts/backup.sh archive/
```

Verify:

```bash
ls scripts
ls archive
```

Question:

```text
What happened to `backup.sh` after using `mv`?
```

---

## Task 10: Rename A File

Rename the report:

```bash
mv reports/report-01.txt reports/final-report.txt
```

Verify:

```bash
ls reports
```

Expected output:

```text
final-report.txt
```

Question:

```text
How can `mv` be used for both moving and renaming?
```

---

## Task 11: Create Nested Directories

Create a deeper folder structure:

```bash
mkdir -p projects/linux/module02/final
```

Verify:

```bash
find projects
```

Expected structure:

```text
projects
projects/linux
projects/linux/module02
projects/linux/module02/final
```

Question:

```text
Why is `mkdir -p` useful for nested directories?
```

---

## Task 12: Copy A File Into A Nested Directory

Copy the final report into the nested folder:

```bash
cp reports/final-report.txt projects/linux/module02/final/
```

Verify:

```bash
ls projects/linux/module02/final
cat projects/linux/module02/final/final-report.txt
```

Question:

```text
What command verified that the copied file exists?
```

---

## Task 13: Use Less

Open the log file with `less`:

```bash
less logs/system.log
```

Press:

```text
q
```

to quit.

Question:

```text
Why is `less` better than `cat` for large files?
```

---

## Task 14: Delete A File

Create a temporary file:

```bash
touch delete-me.txt
ls
```

Delete it:

```bash
rm delete-me.txt
```

Verify:

```bash
ls
```

Question:

```text
What command deleted the file?
```

---

## Task 15: Delete A Directory

Create a temporary directory:

```bash
mkdir temp-folder
touch temp-folder/temp.txt
ls temp-folder
```

Delete the directory:

```bash
rm -r temp-folder
```

Verify:

```bash
ls
```

Question:

```text
Why did you need `rm -r` instead of only `rm`?
```

---

## Task 16: Final Verification

Run:

```bash
pwd
find .
```

You should see your full lab structure, including:

```text
./notes/linux-notes.txt
./reports/final-report.txt
./logs/system.log
./archive/report-01-backup.txt
./archive/backup.sh
./projects/linux/module02/final/final-report.txt
```

---

## Lab Questions

Answer these in your own words:

1. What command creates an empty file?
2. What command creates a directory?
3. What does `mkdir -p` do?
4. What command copies a file?
5. What command moves a file?
6. What command renames a file?
7. What command deletes a file?
8. What command deletes a directory?
9. What is the difference between `cat` and `less`?
10. Why should you run `pwd` and `ls` before deleting anything?

---

## Completion Standard

You completed this lab if you can:

* Create files and directories
* Build nested directory paths
* Add text to files
* View file contents
* Copy files
* Move files
* Rename files
* Delete files
* Delete directories
* Explain each command used

---

## Cleanup Optional

Only run this if you want to remove the lab workspace:

```bash
rm -r ~/linux-school-practice/files-lab
```

Warning:

```text
This deletes the files-lab directory and everything inside it.
Read the command carefully before pressing Enter.
```
