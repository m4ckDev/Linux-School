# Download and Run Locally

Linux School is designed to run locally on your machine.

## Option 1 — Clone with Git

```bash
git clone https://github.com/m4ckDev/Linux-School.git
cd Linux-School
bash tools/linux-school.sh
```

## Option 2 — Download ZIP from terminal

```bash
curl -L -o linux-school.zip https://github.com/m4ckDev/Linux-School/archive/refs/heads/main.zip
unzip linux-school.zip
cd Linux-School-main
bash tools/linux-school.sh
```

## Option 3 — Use GitHub download button

1. Go to the GitHub repository.
2. Click **Code**.
3. Click **Download ZIP**.
4. Extract the ZIP.
5. Open a terminal inside the folder.
6. Run:

```bash
bash tools/linux-school.sh
```

## Test the CLI

```bash
bash tools/linux-school.sh list
bash tools/linux-school.sh open 03 lesson
```

Press `q` to exit the lesson viewer.
