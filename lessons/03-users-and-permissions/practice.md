# Practice — Users and Permissions

Welcome to the hands-on practice section for **Module 03: Users and Permissions**.

In this practice, you will work with:

* Current user identity
* Groups
* File permissions
* Directory permissions
* Symbolic permission changes
* Numeric permission changes
* Ownership concepts
* Permission troubleshooting

> Goal: Build confidence reading and changing Linux permissions without guessing.

---

## Before You Start

Run these commands first:

```bash
whoami
pwd
id
groups
```

Answer these questions:

1. What user are you logged in as?
2. What is your user ID?
3. What groups does your user belong to?
4. Why do groups matter in Linux?

---

## Practice 1 — Build Your Workspace

Create a safe practice folder:

```bash
mkdir -p ~/linux-school-practice/module-03
cd ~/linux-school-practice/module-03
```

Create practice files and folders:

```bash
touch orders.txt
touch maintenance.log
touch hidden-secret.txt

mkdir shared
mkdir private
```

View everything:

```bash
ls -la
```

You should see files, folders, owners, groups, and permission strings.

---

## Practice 2 — Read Permissions

Run:

```bash
ls -l
```

Look at the first column.

Example:

```bash
-rw-r--r--
drwxr-xr-x
```

Break it down:

| Section         | Meaning           |
| --------------- | ----------------- |
| First character | File type         |
| Next 3          | User permissions  |
| Next 3          | Group permissions |
| Last 3          | Other permissions |

Permission letters:

| Letter | Meaning |
| ------ | ------- |
| r      | Read    |
| w      | Write   |
| x      | Execute |

Answer these questions:

1. Which items are files?
2. Which items are directories?
3. What permissions does the owner have?
4. What permissions does the group have?
5. What permissions do others have?

---

## Practice 3 — Set Basic File Permissions

Set `orders.txt` so the owner can read/write, and everyone else can only read:

```bash
chmod 644 orders.txt
```

Set `hidden-secret.txt` so only the owner can read/write it:

```bash
chmod 600 hidden-secret.txt
```

Check the result:

```bash
ls -l
```

Expected idea:

```bash
-rw-r--r-- orders.txt
-rw------- hidden-secret.txt
```

Questions:

1. Why is `644` common for normal files?
2. Why is `600` better for private files?
3. What risk would exist if `hidden-secret.txt` was set to `777`?

---

## Practice 4 — Set Directory Permissions

Set `shared` so users can enter and list the folder:

```bash
chmod 755 shared
```

Set `private` so only the owner can enter and list it:

```bash
chmod 700 private
```

Check:

```bash
ls -ld shared private
```

Questions:

1. What does execute mean on a directory?
2. Why does a directory need `x` permission?
3. Why is `700` useful for private folders?

---

## Practice 5 — Use Symbolic Permissions

Create another file:

```bash
touch script.sh
```

Check it:

```bash
ls -l script.sh
```

Add execute permission for the owner:

```bash
chmod u+x script.sh
```

Remove write permission from group:

```bash
chmod g-w script.sh
```

Remove all permissions from others:

```bash
chmod o-rwx script.sh
```

Check again:

```bash
ls -l script.sh
```

Questions:

1. What did `u+x` do?
2. What did `g-w` do?
3. What did `o-rwx` do?
4. Why is symbolic mode useful?

---

## Practice 6 — Use Numeric Permissions

Create four files:

```bash
touch public.txt
touch team.txt
touch locked.txt
touch runme.sh
```

Apply permissions:

```bash
chmod 644 public.txt
chmod 640 team.txt
chmod 600 locked.txt
chmod 755 runme.sh
```

Check:

```bash
ls -l public.txt team.txt locked.txt runme.sh
```

Match the permission to the purpose:

| File       | Permission | Purpose                     |
| ---------- | ---------: | --------------------------- |
| public.txt |        644 | Owner edits, everyone reads |
| team.txt   |        640 | Owner edits, group reads    |
| locked.txt |        600 | Owner only                  |
| runme.sh   |        755 | Executable script           |

Questions:

1. What does `7` mean?
2. What does `6` mean?
3. What does `5` mean?
4. What does `0` mean?

---

## Practice 7 — Observe Ownership

Run:

```bash
ls -l
```

Look at the owner and group columns.

Then run:

```bash
stat orders.txt
```

Find:

* File name
* Owner
* Group
* Permissions
* Access time
* Modify time
* Change time

Questions:

1. Who owns `orders.txt`?
2. What group owns `orders.txt`?
3. What is the difference between permissions and ownership?
4. Why can ownership affect access?

---

## Practice 8 — Permission Troubleshooting Drill

Create a small fake application structure:

```bash
mkdir -p mission-app/bin
mkdir -p mission-app/logs

touch mission-app/bin/start.sh
touch mission-app/logs/app.log
```

Break the permissions on purpose:

```bash
chmod 600 mission-app/bin/start.sh
chmod 777 mission-app/logs/app.log
```

Check:

```bash
ls -l mission-app/bin
ls -l mission-app/logs
```

Problems:

1. `start.sh` is not executable.
2. `app.log` is too open.

Fix them:

```bash
chmod 755 mission-app/bin/start.sh
chmod 640 mission-app/logs/app.log
```

Check again:

```bash
ls -l mission-app/bin
ls -l mission-app/logs
```

Questions:

1. Why did `start.sh` need execute permission?
2. Why is `777` dangerous?
3. Why is `640` safer for a log file?

---

## Optional Admin Lab — Users and Groups

> Only run this section on a lab machine where you are allowed to use `sudo`.

Create a group:

```bash
sudo groupadd linuxschool
```

Create a test user:

```bash
sudo useradd -m -s /bin/bash trainee03
```

Add the test user to the group:

```bash
sudo usermod -aG linuxschool trainee03
```

Check the user:

```bash
id trainee03
```

Create a shared folder:

```bash
sudo mkdir -p /tmp/linuxschool-shared
sudo chown trainee03:linuxschool /tmp/linuxschool-shared
sudo chmod 770 /tmp/linuxschool-shared
```

Check:

```bash
ls -ld /tmp/linuxschool-shared
```

Clean up:

```bash
sudo rm -rf /tmp/linuxschool-shared
sudo userdel -r trainee03
sudo groupdel linuxschool
```

Questions:

1. What did `groupadd` do?
2. What did `useradd -m` do?
3. Why did we use `usermod -aG`?
4. What did `770` allow?
5. Why should test users be removed after practice?

---

## Final Review

Run:

```bash
cd ~/linux-school-practice/module-03
ls -la
```

Answer these final questions:

1. What command shows your current user?
2. What command shows your groups?
3. What command changes permissions?
4. What command changes ownership?
5. What command shows detailed file information?
6. What is safer: `600` or `777`?
7. What does execute permission mean on a directory?

---

## Cleanup

When finished, remove the practice folder:

```bash
rm -rf ~/linux-school-practice/module-03
```

Confirm it is gone:

```bash
ls ~/linux-school-practice
```

---

## Key Takeaway

Linux permissions control who can read, write, and execute files or directories.

The basic pattern is:

```bash
user group others
rwx  rwx   rwx
```

If you can read `ls -l`, you can understand who has access.

If you can use `chmod`, you can control that access.
