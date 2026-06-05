# Module 04 — Processes and Services

## Overview

Welcome to **Module 04: Processes and Services**.

In this module, you will learn how Linux runs programs in the background, how to inspect what is currently running, and how to manage system services.

This is one of the most important Linux skills because almost everything on a Linux system runs as a process or service.

Examples:

- A web server runs as a service.
- SSH runs as a service.
- A terminal command creates a process.
- A background task creates a process.
- A broken service can cause an application to fail.
- A runaway process can slow down or crash a system.

By the end of this module, you should be able to inspect running processes, understand process IDs, stop processes safely, and check service status.

---

## Why This Module Matters

Linux systems are always running processes.

Some are started by the user.

Some are started by the system.

Some run in the foreground.

Some run silently in the background.

If you want to troubleshoot Linux, manage servers, or work in cybersecurity, you need to understand what is running on the system.

This module helps answer questions like:

```text
What is running?
Who started it?
How much CPU is it using?
How much memory is it using?
What is the process ID?
Is the service active?
Why did the service fail?
How do I stop it safely?
```

---

## Real-World Examples

Processes and services matter in real situations.

### Example 1 — Web Server Troubleshooting

A website is down.

You check the service:

```bash
systemctl status nginx
```

If it is failed, you inspect logs:

```bash
journalctl -u nginx
```

Now you have evidence instead of guessing.

---

### Example 2 — High CPU Usage

A Linux system feels slow.

You check running processes:

```bash
top
```

You find one process using too much CPU.

Then you inspect or stop it safely.

---

### Example 3 — SSH Access Problem

Users cannot SSH into a server.

You check:

```bash
systemctl status ssh
```

or on some systems:

```bash
systemctl status sshd
```

If the service is inactive, you know where to start.

---

### Example 4 — Cybersecurity Investigation

You suspect something strange is running.

You check:

```bash
ps aux
```

Then search for suspicious process names:

```bash
ps aux | grep suspicious-name
```

Understanding processes helps you investigate what a system is doing.

---

## Commands Covered

This module introduces these commands:

```bash
ps
top
pgrep
kill
pkill
systemctl
journalctl
```

You will also continue using commands from previous modules:

```bash
pwd
ls
cd
cat
less
grep
chmod
```

---

## Key Concepts

| Concept | Meaning |
|---|---|
| Process | A running program |
| PID | Process ID number |
| PPID | Parent Process ID |
| Foreground process | A process attached to your terminal |
| Background process | A process running without blocking your terminal |
| Service | A long-running background program managed by the system |
| Daemon | A background service process |
| systemd | The service manager used by many Linux systems |
| Unit | A systemd object, such as a service |
| Logs | Records of system and service activity |

---

## Process Basics

A process is a running instance of a program.

When you run:

```bash
ls
```

Linux starts a short-lived process.

When you run:

```bash
sleep 60
```

Linux starts a process that stays alive for 60 seconds.

Each process gets a process ID, called a PID.

Example:

```bash
ps
```

You may see output like:

```text
PID TTY          TIME CMD
1234 pts/0    00:00:00 bash
2345 pts/0    00:00:00 ps
```

The `PID` is how Linux tracks the process.

---

## Service Basics

A service is usually a program that runs in the background.

Examples:

```text
ssh
nginx
apache2
cron
docker
NetworkManager
```

Services are commonly managed with:

```bash
systemctl
```

Example:

```bash
systemctl status ssh
```

This tells you whether the SSH service is running, stopped, failed, or disabled.

---

## Module Files

| File | Purpose |
|---|---|
| [lesson.md](lesson.md) | Full explanation of processes and services |
| [practice.md](practice.md) | Guided hands-on command practice |
| [Lab 05](../../labs/lab-05-processes-and-services.md) | Full lab assignment |
| [Challenge 04](../../challenges/beginner/challenge-04-processes-and-services.md) | Beginner troubleshooting challenge |
| [Quiz 05](../../quizzes/quiz-05-processes-and-services.md) | Knowledge check |

---

## Recommended Practice Environment

Use a safe Linux environment:

- Ubuntu VM
- Debian VM
- Kali VM
- WSL
- Raspberry Pi
- Spare Linux laptop
- Cloud Linux instance

For beginners, Ubuntu or Debian is recommended.

Some service names may differ depending on the distribution.

Examples:

| Service Purpose | Ubuntu/Debian Name | Other Possible Name |
|---|---|---|
| SSH | `ssh` | `sshd` |
| Web server | `apache2` | `httpd` |
| Cron scheduler | `cron` | `crond` |

If one service name does not work, check your system’s actual service name.

---

## Safe Practice Folder

Create a safe folder for this module:

```bash
mkdir -p ~/linux-school-practice/module-04
cd ~/linux-school-practice/module-04
```

This module mostly inspects running processes and services, but you will still use a practice folder for notes and test files.

---

## Safety Notes

Be careful with process management.

Commands like these can stop running programs:

```bash
kill
pkill
systemctl stop
```

Do not stop random processes.

Do not stop system services unless you understand what they do.

Avoid using `sudo` unless the lab clearly tells you to.

---

## What You Should Know Before Starting

Before Module 04, you should understand:

- How to navigate directories
- How to list files
- How to read command output
- How to use `less`
- How to use basic file permissions
- How to work safely in a practice folder

Recommended previous modules:

```text
Module 00 — Getting Started
Module 01 — Navigation
Module 02 — Files and Directories
Module 03 — Users and Permissions
```

---

## Learning Goals

By the end of this module, you should be able to:

1. Explain what a Linux process is.
2. Explain what a PID is.
3. View running processes with `ps`.
4. Monitor processes with `top`.
5. Search for processes with `pgrep`.
6. Stop a process safely with `kill`.
7. Understand when `pkill` is useful.
8. Explain what a Linux service is.
9. Check service status with `systemctl`.
10. View service logs with `journalctl`.
11. Troubleshoot a failed service at a beginner level.
12. Explain why processes and services matter in cybersecurity.

---

## Basic Workflow

When troubleshooting a process or service, use this pattern:

```text
Inspect first.
Identify the process or service.
Read the output.
Check logs if needed.
Make a careful change.
Verify the result.
```

Example process workflow:

```bash
ps aux
pgrep process-name
kill PID
ps aux | grep process-name
```

Example service workflow:

```bash
systemctl status service-name
journalctl -u service-name
systemctl restart service-name
systemctl status service-name
```

---

## Common Beginner Mistakes

Avoid these mistakes:

1. Killing random processes.
2. Using `sudo` without understanding why.
3. Restarting services before reading the status.
4. Ignoring logs.
5. Confusing a process with a service.
6. Assuming all Linux distributions use the same service names.
7. Using `pkill` too broadly.
8. Not verifying that the fix worked.

---

## Quick Reference

| Task | Command |
|---|---|
| Show current shell processes | `ps` |
| Show all running processes | `ps aux` |
| Monitor processes live | `top` |
| Find a process by name | `pgrep name` |
| Stop a process by PID | `kill PID` |
| Stop a process by name | `pkill name` |
| Check a service | `systemctl status service` |
| Start a service | `systemctl start service` |
| Stop a service | `systemctl stop service` |
| Restart a service | `systemctl restart service` |
| View service logs | `journalctl -u service` |

---

## Cybersecurity Connection

Processes and services are important in cybersecurity because attackers often rely on running code.

A defender may need to answer:

```text
What process is running?
Who started it?
Where did it come from?
Is it normal?
Is it using the network?
Is it hiding as a service?
Did it create logs?
```

Linux process knowledge helps with:

- Malware investigation
- Persistence checks
- Log review
- Incident response
- Privilege abuse detection
- Service hardening
- Server troubleshooting

Before you can defend a system, you need to understand what is running on it.

---

## Module Completion Checklist

You are ready to move on when you can:

- [ ] Explain what a process is.
- [ ] Explain what a service is.
- [ ] Use `ps` to view processes.
- [ ] Use `top` to monitor processes.
- [ ] Use `pgrep` to find a process.
- [ ] Use `kill` safely.
- [ ] Use `systemctl status` to check services.
- [ ] Use `journalctl -u` to view service logs.
- [ ] Explain why `pkill` can be dangerous.
- [ ] Troubleshoot a simple failed service.

---

## Next Step

Start with the lesson:

```text
lessons/04-processes-and-services/lesson.md
```

Or open it from the Linux School CLI:

```bash
bash tools/linux-school.sh open 04 lesson
```
