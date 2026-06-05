# Practice 02 - Files and Directories

## Objective

Practice creating, viewing, copying, moving, renaming, and deleting files and directories from the Linux terminal.

By the end of this practice, you should be able to:

* Create files with `touch`
* Create folders with `mkdir`
* Create nested folders with `mkdir -p`
* Copy files with `cp`
* Move files with `mv`
* Rename files with `mv`
* View files with `cat`, `head`, `tail`, and `less`
* Delete files with `rm`
* Delete folders with `rm -r`

---

## Practice Setup

Start from your home directory:

```bash
cd ~
pwd
```

Create a practice folder:

```bash
mkdir -p linux-school-practice/files-practice
cd linux-school-practice/files-practice
pwd
```

---

## Practice 1: Create Files

Create three files:

```bash
touch notes.txt tasks.txt commands.txt
```

Verify:

```bash
ls
```

Question:

```text
What files did you create?
```

---

## Practice 2: Create Directories

Create three directories:

```bash
mkdir docs logs scripts
```

Verify:

```bash
ls
```

Question:

```text
What directories did you create?
```

---

## Practice 3: Create Nested Directories

Create a nested directory path:

```bash
mkdir -p school/linux/module02
```

Verify:

```bash
find school
```

Question:

```text
What did `mkdir -p` create?
```

---

## Practice 4: Add Text To A File

Add text to `notes.txt`:

```bash
echo "Linux School file practice" > notes.txt
```

View the file:

```bash
cat notes.txt
```

Question:

```text
What did `cat` show?
```

---

## Practice 5: Copy A File

Copy `notes.txt`:

```bash
cp notes.txt notes-copy.txt
```

Verify:

```bash
ls
```

Question:

```text
What is the difference between copying and moving a file?
```

---

## Practice 6: Move A File

Move `notes-copy.txt` into the `docs` directory:

```bash
mv notes-copy.txt docs/
```

Verify:

```bash
ls
ls docs
```

Question:

```text
Where is `notes-copy.txt` now?
```

---

## Practice 7: Rename A File

Rename `tasks.txt`:

```bash
mv tasks.txt todo.txt
```

Verify:

```bash
ls
```

Question:

```text
Which command renamed the file?
```

---

## Practice 8: View File Start And End

Add several lines to `commands.txt`:

```bash
echo "pwd" > commands.txt
echo "ls" >> commands.txt
echo "cd" >> commands.txt
echo "touch" >> commands.txt
echo "mkdir" >> commands.txt
echo "cp" >> commands.txt
echo "mv" >> commands.txt
echo "rm" >> commands.txt
```

View the beginning:

```bash
head commands.txt
```

View the end:

```bash
tail commands.txt
```

Question:

```text
What is the difference between `head` and `tail`?
```

---

## Practice 9: Use Less

Open the file with `less`:

```bash
less commands.txt
```

Inside `less`, press:

```text
q
```

to quit.

Question:

```text
Why is `less` useful for longer files?
```

---

## Practice 10: Delete A File

Delete `todo.txt`:

```bash
rm todo.txt
```

Verify:

```bash
ls
```

Question:

```text
Is `todo.txt` still there?
```

---

## Practice 11: Delete A Directory

Delete the `scripts` directory:

```bash
rm -r scripts
```

Verify:

```bash
ls
```

Question:

```text
What does `rm -r` do?
```

---

## Practice 12: Safety Check

Before deleting anything, always run:

```bash
pwd
ls
```

Question:

```text
Why should you run `pwd` and `ls` before using `rm`?
```

---

## Completion Check

You completed this practice if you can explain:

* `touch`
* `mkdir`
* `mkdir -p`
* `cp`
* `mv`
* `rm`
* `rm -r`
* `cat`
* `less`
* `head`
* `tail`

---

## Cleanup Optional

Only run this if you want to remove the practice folder:

```bash
rm -r ~/linux-school-practice/files-practice
```

Warning:

```text
This deletes the files-practice folder and everything inside it.
Read the command carefully before pressing Enter.
```
