# Quiz 02 - Navigation

## Objective

Test your understanding of Linux navigation commands.

This quiz checks if you understand:

* `pwd`
* `ls`
* `ls -la`
* `cd`
* `cd ..`
* `cd ~`
* `cd /`
* absolute paths
* relative paths

---

## Question 1

What command shows your current directory?

A. `ls`
B. `pwd`
C. `cd`
D. `whoami`

Answer:

```text
```

---

## Question 2

What does this command do?

```bash
cd ..
```

A. Moves to the root directory
B. Moves to the home directory
C. Moves up one directory
D. Lists hidden files

Answer:

```text
```

---

## Question 3

What does `~` represent in Linux?

A. The root directory
B. The current directory
C. The user's home directory
D. A hidden file

Answer:

```text
```

---

## Question 4

Which path is an absolute path?

A. `Documents/projects`
B. `../Downloads`
C. `/home/m4ck/Documents`
D. `./scripts`

Answer:

```text
```

---

## Question 5

Which command lists hidden files?

A. `ls`
B. `ls -la`
C. `pwd -h`
D. `cd --hidden`

Answer:

```text
```

---

## Question 6

What does this command do?

```bash
cd /
```

A. Moves to the home directory
B. Moves to the root directory
C. Deletes the current directory
D. Lists system files

Answer:

```text
```

---

## Question 7

What does this command do?

```bash
cd ~
```

A. Moves to the root directory
B. Moves to the parent directory
C. Moves to the user's home directory
D. Shows hidden files

Answer:

```text
```

---

## Question 8

What is the difference between an absolute path and a relative path?

Answer:

```text
```

---

## Question 9

You are in this directory:

```text
/home/m4ck/Documents/Linux-School
```

You run:

```bash
cd ..
```

Where are you now?

Answer:

```text
```

---

## Question 10

You are lost in the terminal. What two commands should you run first?

Answer:

```text
```

---

## Practical Task

Complete this task in the terminal:

1. Go to your home directory.
2. Create a folder named `nav-quiz-test`.
3. Move into that folder.
4. Print your current location.
5. Return to your home directory.
6. Delete the test folder.

Commands used:

```bash
cd ~
mkdir nav-quiz-test
cd nav-quiz-test
pwd
cd ~
rm -r nav-quiz-test
```

---

## Answer Key

## Question 1

Correct answer: B

`pwd` shows your current directory.

---

## Question 2

Correct answer: C

`cd ..` moves up one directory.

---

## Question 3

Correct answer: C

`~` represents the user's home directory.

---

## Question 4

Correct answer: C

`/home/m4ck/Documents` is absolute because it starts from `/`.

---

## Question 5

Correct answer: B

`ls -la` lists all files, including hidden files.

---

## Question 6

Correct answer: B

`cd /` moves to the root directory.

---

## Question 7

Correct answer: C

`cd ~` moves to the user's home directory.

---

## Question 8

An absolute path starts from `/`.

A relative path starts from your current location.

Example absolute path:

```text
/home/m4ck/Documents
```

Example relative path:

```text
Documents
```

---

## Question 9

Correct answer:

```text
/home/m4ck/Documents
```

`cd ..` moved up one level from `Linux-School`.

---

## Question 10

Correct answer:

```bash
pwd
ls
```

`pwd` shows where you are.

`ls` shows what is inside the current directory.

---

## Completion Standard

You passed this quiz if you can:

* Score at least 8 out of 10
* Explain the difference between `/` and `~`
* Explain the difference between absolute and relative paths
* Use `pwd` and `ls` to recover when lost
* Complete the practical task without help
