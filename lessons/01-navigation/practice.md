# Practice 01 - Navigation

## Objective

Practice moving around the Linux file system using basic terminal commands.

By the end of this practice, you should be able to:

* Check your current directory
* List files and folders
* Move to root
* Move to home
* Move into a folder
* Move back one level
* Understand absolute and relative paths

---

## Practice 1: Check Your Location

Run:

```bash
pwd
```

Answer:

```text
What directory are you currently in?
```

---

## Practice 2: List Files

Run:

```bash
ls
```

Then run:

```bash
ls -la
```

Answer:

```text
What changed between `ls` and `ls -la`?
```

---

## Practice 3: Move To Root

Run:

```bash
cd /
pwd
ls
```

Answer:

```text
What folders do you see at the root of the file system?
```

---

## Practice 4: Return Home

Run:

```bash
cd ~
pwd
```

Answer:

```text
What is your home directory path?
```

---

## Practice 5: Move Into Documents

Run:

```bash
cd ~/Documents
pwd
ls
```

Answer:

```text
Were you able to move into Documents? What did you see?
```

---

## Practice 6: Move Back One Level

Run:

```bash
cd ..
pwd
```

Answer:

```text
Where are you now?
```

---

## Practice 7: Absolute Path Test

Run:

```bash
cd /
cd /home/m4ck/Documents
pwd
```

Answer:

```text
Why did `/home/m4ck/Documents` work even though you started from `/`?
```

---

## Practice 8: Relative Path Test

Run:

```bash
cd ~
cd Documents
pwd
```

Answer:

```text
Why did `cd Documents` work from your home directory?
```

---

## Practice 9: Recovery Drill

Run:

```bash
cd /
pwd
ls
cd ~
pwd
ls
```

Answer:

```text
How can `pwd` and `ls` help you recover when you feel lost?
```

---

## Completion Check

You completed this practice if you can explain:

* What `pwd` does
* What `ls` does
* What `ls -la` shows
* What `cd ..` does
* What `cd ~` does
* What `cd /` does
* The difference between absolute and relative paths
