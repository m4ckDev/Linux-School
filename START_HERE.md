# Start Here

Welcome to Linux School.

Linux School is a hands-on Linux command line training platform. The goal is to help beginners learn Linux by actually using the terminal.

```text
Do not just read Linux.
Use Linux.
Break small things.
Fix them.
Repeat.
```

---

## How to Use Linux School

Start at Module 00 and move forward in order.

Each module follows this pattern:

```text
Overview
Lesson
Practice
Lab
Challenge
Quiz
```

Recommended flow:

1. Read the module overview.
2. Read the lesson.
3. Complete the practice file.
4. Complete the lab.
5. Attempt the challenge.
6. Take the quiz.
7. Repeat until the commands feel normal.
8. Move to the next module.

---

## Run Linux School from the Terminal

Clone the repo:

```bash
git clone https://github.com/m4ckDev/Linux-School.git
cd Linux-School
```

Start the CLI:

```bash
bash tools/linux-school.sh
```

List modules:

```bash
bash tools/linux-school.sh list
```

Open a lesson directly:

```bash
bash tools/linux-school.sh open 03 lesson
```

---

## Practice Safely

Create safe practice folders:

```bash
mkdir -p ~/linux-school-practice
mkdir -p ~/linux-school-labs
mkdir -p ~/linux-school-challenges
```

Do not practice destructive commands in important folders.

Before running a command, ask:

```text
What does this command do?
Where am I running it?
What files or folders will it affect?
Can I undo this?
```

---

## Main Rule

```text
Inspect first.
Fix second.
Verify last.
```
