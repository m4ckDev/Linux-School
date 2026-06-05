# Linux School CLI Guide

Linux School includes a terminal launcher:

```bash
bash tools/linux-school.sh
```

This lets users open lessons, practice files, labs, challenges, and quizzes from the command line.

---

## Interactive Menu

Run:

```bash
bash tools/linux-school.sh
```

You will see:

```text
1) List modules
2) Open module overview
3) Open lesson
4) Open practice
5) Open lab
6) Open challenge
7) Open quiz
8) Create practice folders
9) Exit
```

Choose an option, then enter the module number.

Example:

```text
Choose an option: 3
Enter module number, example 03: 03
```

That opens Module 03 lesson.

---

## Direct Commands

List modules:

```bash
bash tools/linux-school.sh list
```

Open Module 03 overview:

```bash
bash tools/linux-school.sh open 03 overview
```

Open Module 03 lesson:

```bash
bash tools/linux-school.sh open 03 lesson
```

Open Module 03 practice:

```bash
bash tools/linux-school.sh open 03 practice
```

Open Module 03 lab:

```bash
bash tools/linux-school.sh open 03 lab
```

Open Module 03 challenge:

```bash
bash tools/linux-school.sh open 03 challenge
```

Open Module 03 quiz:

```bash
bash tools/linux-school.sh open 03 quiz
```

Create practice folders:

```bash
bash tools/linux-school.sh setup
```

---

## Exit the Viewer

Files open with `less`.

Press:

```text
q
```

to quit.
