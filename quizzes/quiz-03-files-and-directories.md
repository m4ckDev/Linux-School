# Quiz 03 - Files and Directories

## Objective

Test your understanding of Linux file and directory commands.

This quiz checks if you understand:

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
* `find`

---

## Question 1

What command creates an empty file?

A. `mkdir`
B. `touch`
C. `cp`
D. `cat`

Answer:

```text
```

---

## Question 2

What command creates a directory?

A. `touch`
B. `mkdir`
C. `mv`
D. `less`

Answer:

```text
```

---

## Question 3

What does this command do?

```bash
mkdir -p school/linux/module02
```

A. Deletes nested directories
B. Creates nested directories
C. Copies a directory
D. Lists hidden files

Answer:

```text
```

---

## Question 4

Which command copies a file?

A. `mv notes.txt backup.txt`
B. `cp notes.txt backup.txt`
C. `rm notes.txt`
D. `cat notes.txt`

Answer:

```text
```

---

## Question 5

Which command renames a file?

A. `mv old.txt new.txt`
B. `cp old.txt new.txt`
C. `touch old.txt new.txt`
D. `mkdir old.txt new.txt`

Answer:

```text
```

---

## Question 6

What command deletes a file?

A. `cat`
B. `less`
C. `rm`
D. `pwd`

Answer:

```text
```

---

## Question 7

What command deletes a directory and everything inside it?

A. `rm`
B. `rm -r`
C. `cp -r`
D. `mkdir -p`

Answer:

```text
```

---

## Question 8

What is the difference between `cat` and `less`?

Answer:

```text
```

---

## Question 9

What is the difference between `head` and `tail`?

Answer:

```text
```

---

## Question 10

What is the difference between `>` and `>>`?

Answer:

```text
```

---

## Question 11

What command shows files and directories inside a path recursively?

A. `pwd`
B. `find`
C. `cd`
D. `touch`

Answer:

```text
```

---

## Question 12

Why should you run `pwd` and `ls` before using `rm` or `rm -r`?

Answer:

```text
```

---

## Practical Task

Complete this task in the terminal:

1. Go to your home directory.
2. Create a folder named `file-quiz-test`.
3. Move into the folder.
4. Create a file named `quiz.txt`.
5. Add the text `Linux file quiz complete.` to the file.
6. Copy `quiz.txt` to `quiz-backup.txt`.
7. Rename `quiz.txt` to `final-quiz.txt`.
8. Show both files.
9. Delete the test folder.

Commands:

```bash
cd ~
mkdir file-quiz-test
cd file-quiz-test
touch quiz.txt
echo "Linux file quiz complete." > quiz.txt
cp quiz.txt quiz-backup.txt
mv quiz.txt final-quiz.txt
ls -la
cat final-quiz.txt
cat quiz-backup.txt
cd ~
rm -r file-quiz-test
```

---

## Answer Key

## Question 1

Correct answer: B

`touch` creates an empty file.

---

## Question 2

Correct answer: B

`mkdir` creates a directory.

---

## Question 3

Correct answer: B

`mkdir -p` creates nested directories and does not fail if part of the path already exists.

---

## Question 4

Correct answer: B

`cp notes.txt backup.txt` copies a file.

---

## Question 5

Correct answer: A

`mv old.txt new.txt` renames a file.

---

## Question 6

Correct answer: C

`rm` deletes a file.

---

## Question 7

Correct answer: B

`rm -r` deletes a directory and everything inside it.

---

## Question 8

`cat` prints file contents directly to the terminal.

`less` opens the file in an interactive viewer and is better for longer files.

---

## Question 9

`head` shows the beginning of a file.

`tail` shows the end of a file.

---

## Question 10

`>` writes output to a file and overwrites existing content.

`>>` appends output to the end of a file.

---

## Question 11

Correct answer: B

`find` can recursively show files and directories inside a path.

---

## Question 12

You should run `pwd` and `ls` before deleting anything so you can confirm where you are and what files or folders are present.

---

## Completion Standard

You passed this quiz if you can:

* Score at least 10 out of 12
* Explain the difference between files and directories
* Create files and folders from the terminal
* Copy, move, rename, and delete files
* Use `cat`, `less`, `head`, and `tail`
* Explain why deletion commands require extra caution
