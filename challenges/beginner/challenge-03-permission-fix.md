# Challenge 03 — Permission Fix

## Scenario

You are a junior Linux administrator helping troubleshoot a small training server.

A team reports three problems:

1. A public note file cannot be read.
2. A private file is too exposed.
3. A startup script will not run.

Your job is to inspect the permissions, identify what is wrong, and fix the issue.

---

## Challenge Goal

Use your Module 03 skills to repair broken Linux permissions.

You will practice:

- Reading permissions with `ls -l`
- Checking file details with `stat`
- Fixing permissions with `chmod`
- Understanding safe permission choices
- Explaining your changes

---

## Skills Tested

| Skill | Command Examples |
|---|---|
| Check location | `pwd` |
| List files | `ls`, `ls -l`, `ls -la` |
| Read files | `cat` |
| Change permissions | `chmod` |
| Inspect metadata | `stat` |
| Remove lab files | `rm -rf` |

---

## Rules

1. Work only inside the challenge folder.
2. Do not use `sudo`.
3. Do not use `chmod 777` as a lazy fix.
4. Read the permissions before changing them.
5. Verify every fix.
6. Be able to explain what you changed.

---

## Part 1 — Build the Broken Environment

Create the challenge folder:

```bash
mkdir -p ~/linux-school-challenges/challenge-03-permission-fix
cd ~/linux-school-challenges/challenge-03-permission-fix
```

Create the files and folders:

```bash
mkdir public private scripts logs

echo "This file should be readable by everyone." > public/team-announcement.txt
echo "This file should only be readable by the owner." > private/admin-notes.txt
echo '#!/usr/bin/env bash' > scripts/start-training.sh
echo 'echo "Training service started."' >> scripts/start-training.sh
echo "Training log started." > logs/training.log
```

Now intentionally break the permissions:

```bash
chmod 000 public/team-announcement.txt
chmod 777 private/admin-notes.txt
chmod 644 scripts/start-training.sh
chmod 777 logs/training.log
```

Check the files:

```bash
ls -l public private scripts logs
```

---

## Part 2 — Identify the Problems

Use these commands to inspect the files:

```bash
ls -l public/team-announcement.txt
ls -l private/admin-notes.txt
ls -l scripts/start-training.sh
ls -l logs/training.log
```

Use `stat` for more detail:

```bash
stat public/team-announcement.txt
stat private/admin-notes.txt
stat scripts/start-training.sh
stat logs/training.log
```

Answer these before fixing anything:

1. Which file has no permissions?
2. Which file is dangerously open?
3. Which file is missing execute permission?
4. Which file should not be executable?
5. Which permission setting is the biggest security risk?

---

## Part 3 — Fix the Public File

Problem:

```text
public/team-announcement.txt cannot be read.
```

Required permission:

```text
-rw-r--r--
```

Fix the file:

```bash
chmod 644 public/team-announcement.txt
```

Verify:

```bash
ls -l public/team-announcement.txt
cat public/team-announcement.txt
```

Expected result:

```text
This file should be readable by everyone.
```

---

## Part 4 — Fix the Private File

Problem:

```text
private/admin-notes.txt is too exposed.
```

Required permission:

```text
-rw-------
```

Fix the file:

```bash
chmod 600 private/admin-notes.txt
```

Verify:

```bash
ls -l private/admin-notes.txt
cat private/admin-notes.txt
```

---

## Part 5 — Fix the Startup Script

Problem:

```text
scripts/start-training.sh will not run.
```

Try to run it first:

```bash
./scripts/start-training.sh
```

It should fail because the script does not have execute permission.

Required permission:

```text
-rwxr-xr-x
```

Fix it:

```bash
chmod 755 scripts/start-training.sh
```

Run it again:

```bash
./scripts/start-training.sh
```

Expected output:

```text
Training service started.
```

---

## Part 6 — Fix the Log File

Problem:

```text
logs/training.log is set to 777.
```

A log file should not be executable by everyone.

Required permission:

```text
-rw-r-----
```

Fix it:

```bash
chmod 640 logs/training.log
```

Verify:

```bash
ls -l logs/training.log
cat logs/training.log
```

---

## Part 7 — Final Verification

Run:

```bash
ls -l public/team-announcement.txt
ls -l private/admin-notes.txt
ls -l scripts/start-training.sh
ls -l logs/training.log
```

Your final permissions should match:

| File | Correct Permission | Numeric |
|---|---|---:|
| `public/team-announcement.txt` | `-rw-r--r--` | `644` |
| `private/admin-notes.txt` | `-rw-------` | `600` |
| `scripts/start-training.sh` | `-rwxr-xr-x` | `755` |
| `logs/training.log` | `-rw-r-----` | `640` |

---

## Part 8 — Explain Your Fix

Answer these questions:

1. What was wrong with `public/team-announcement.txt`?
2. Why was `chmod 644` the correct fix?
3. What was wrong with `private/admin-notes.txt`?
4. Why is `chmod 600` safer for private files?
5. Why did `scripts/start-training.sh` need execute permission?
6. Why is `chmod 777` dangerous?
7. Why should a log file usually not have execute permission?
8. What command helped you verify the final permissions?

---

## Bonus Challenge — Fix Directory Permissions

Now inspect the directories:

```bash
ls -ld public private scripts logs
```

Set these directory permissions:

| Directory | Permission | Why |
|---|---:|---|
| `public/` | `755` | Everyone can enter and read |
| `private/` | `700` | Owner only |
| `scripts/` | `755` | Scripts can be accessed and executed |
| `logs/` | `750` | Owner full access, group read/enter |

Apply the fixes:

```bash
chmod 755 public
chmod 700 private
chmod 755 scripts
chmod 750 logs
```

Verify:

```bash
ls -ld public private scripts logs
```

---

## Success Criteria

You complete this challenge when:

- The public file is readable.
- The private file is restricted.
- The startup script runs successfully.
- The log file is no longer set to `777`.
- Directory permissions are safe.
- You can explain every permission change.

---

## Cleanup

When finished, remove the challenge folder:

```bash
rm -rf ~/linux-school-challenges/challenge-03-permission-fix
```

Confirm cleanup:

```bash
ls ~/linux-school-challenges
```

---

## Challenge Complete

You fixed broken permissions like a Linux administrator.

Key lesson:

```text
Do not guess permissions.
Inspect first.
Fix second.
Verify last.
```
