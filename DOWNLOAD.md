# Download and Run Linux School

This guide explains how to download Linux School and run it locally.

---

## Option 1 — Clone with Git

This is the recommended method.

```bash
git clone https://github.com/m4ckDev/Linux-School.git
cd Linux-School
bash tools/linux-school.sh
```

---

## Option 2 — Download ZIP from GitHub

1. Open the GitHub repository.
2. Click the green **Code** button.
3. Click **Download ZIP**.
4. Extract the ZIP file.
5. Open a terminal inside the extracted folder.
6. Run:

```bash
bash tools/linux-school.sh
```

---

## Option 3 — Download ZIP from Terminal

```bash
curl -L -o linux-school.zip https://github.com/m4ckDev/Linux-School/archive/refs/heads/main.zip
unzip linux-school.zip
cd Linux-School-main
bash tools/linux-school.sh
```

---

## Test the CLI

List modules:

```bash
bash tools/linux-school.sh list
```

Open Module 03 lesson:

```bash
bash tools/linux-school.sh open 03 lesson
```

Open Module 04 overview:

```bash
bash tools/linux-school.sh open 04 overview
```

---

## Exit the File Viewer

Linux School opens files with `less`.

Press:

```text
q
```

to quit the viewer.
