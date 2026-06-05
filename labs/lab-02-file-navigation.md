# Lab 02 - File Navigation

## Objective

Use Linux navigation commands to move through the file system, create practice folders, and prove your location using the terminal.

By the end of this lab, you should be able to:

* Move between directories
* Create folders
* Create files
* Use absolute paths
* Use relative paths
* Return home quickly
* Verify your location with `pwd`

---

## Commands Used

```bash
pwd
ls
ls -la
cd
cd ..
cd ~
cd /
mkdir
touch
tree
find
```

---

## Task 1: Start From Home

Run:

```bash
cd ~
pwd
```

You should see something similar to:

```text
/home/m4ck
```

Question:

```text
Why is it important to start from a known location?
```

---

## Task 2: Create A Practice Area

Run:

```bash
mkdir -p linux-school-practice/navigation-lab
cd linux-school-practice/navigation-lab
pwd
```

You should now be inside:

```text
/home/m4ck/linux-school-practice/navigation-lab
```

Question:

```text
What did `mkdir -p` do?
```

---

## Task 3: Create Three Directories

Run:

```bash
mkdir alpha bravo charlie
ls
```

You should see:

```text
alpha  bravo  charlie
```

Question:

```text
What command showed the new directories?
```

---

## Task 4: Create Files Inside Each Directory

Run:

```bash
touch alpha/file-a.txt
touch bravo/file-b.txt
touch charlie/file-c.txt
```

Now verify each file:

```bash
ls -la alpha
ls -la bravo
ls -la charlie
```

Question:

```text
What does `touch` do?
```

---

## Task 5: Navigate Using Relative Paths

Start inside the navigation lab:

```bash
cd ~/linux-school-practice/navigation-lab
```

Move into each directory:

```bash
cd alpha
pwd
cd ..
cd bravo
pwd
cd ..
cd charlie
pwd
cd ..
```

Question:

```text
Why did `cd alpha`, `cd bravo`, and `cd charlie` work?
```

---

## Task 6: Navigate Using Absolute Paths

Run:

```bash
cd /
pwd
```

Now move directly to each directory using absolute paths:

```bash
cd /home/m4ck/linux-school-practice/navigation-lab/alpha
pwd

cd /home/m4ck/linux-school-practice/navigation-lab/bravo
pwd

cd /home/m4ck/linux-school-practice/navigation-lab/charlie
pwd
```

Question:

```text
Why did these commands work even though you started from `/`?
```

---

## Task 7: Return Home

Run:

```bash
cd ~
pwd
```

Question:

```text
What does `~` represent?
```

---

## Task 8: View The Whole Lab Structure

Try:

```bash
tree ~/linux-school-practice/navigation-lab
```

If `tree` is not installed, use:

```bash
find ~/linux-school-practice/navigation-lab
```

Expected structure:

```text
navigation-lab
├── alpha
│   └── file-a.txt
├── bravo
│   └── file-b.txt
└── charlie
    └── file-c.txt
```

---

## Lab Questions

Answer these in your own words:

1. What does `pwd` show?
2. What does `cd ..` do?
3. What does `cd ~` do?
4. What is the difference between `/` and `~`?
5. What is the difference between an absolute path and a relative path?
6. What does `mkdir -p` do?
7. What does `touch` do?
8. How can `find` help when `tree` is not installed?

---

## Completion Standard

You completed this lab if you can:

* Create the practice directory structure
* Move into each folder
* Create files inside folders
* Use both absolute and relative paths
* Return home without guessing
* Explain each command used in the lab

---

## Cleanup Optional

Only run this if you want to delete the practice files:

```bash
rm -r ~/linux-school-practice/navigation-lab
```

Warning:

```text
The `rm -r` command deletes directories and their contents. Read the command carefully before pressing Enter.
```
