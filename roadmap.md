# Linux School Roadmap

Linux School is a structured command line learning path built around lessons, practice files, labs, challenges, quizzes, and cheatsheets.

---

## Progress Tracker

| Module | Topic                    | Status  |
| ------ | ------------------------ | ------- |
| 00     | Getting Started          | Built   |
| 01     | Navigation               | Built   |
| 02     | Files and Directories    | Built   |
| 03     | Users and Permissions    | Next    |
| 04     | Package Management       | Planned |
| 05     | Processes and Services   | Planned |
| 06     | Networking Basics        | Planned |
| 07     | Bash Scripting           | Planned |
| 08     | System Administration    | Planned |
| 09     | Cybersecurity CLI Basics | Planned |

---

## Current Focus

The next module is:

```text
03 - Users and Permissions
```

This module will introduce:

* Linux users
* Linux groups
* File ownership
* File permissions
* `chmod`
* `chown`
* `groups`
* `id`
* Permission troubleshooting

---

## Phase 1: Foundations

Goal:

Build basic terminal confidence.

Modules:

| Module | Topic                 | Status |
| ------ | --------------------- | ------ |
| 00     | Getting Started       | Built  |
| 01     | Navigation            | Built  |
| 02     | Files and Directories | Built  |

Skills covered:

* Understand the terminal
* Learn basic commands
* Navigate the Linux file system
* Work with files and directories
* Understand absolute and relative paths
* Create, copy, move, rename, view, and delete files

---

## Phase 2: Core Linux Skills

Goal:

Understand how Linux systems are organized and controlled.

Modules:

| Module | Topic                  | Status  |
| ------ | ---------------------- | ------- |
| 03     | Users and Permissions  | Next    |
| 04     | Package Management     | Planned |
| 05     | Processes and Services | Planned |

Skills to cover:

* Users and groups
* File ownership
* File permissions
* `chmod`
* `chown`
* Package installation and removal
* Process management
* Services
* Logs

---

## Phase 3: Networking

Goal:

Learn basic Linux networking commands and troubleshooting.

Module:

| Module | Topic             | Status  |
| ------ | ----------------- | ------- |
| 06     | Networking Basics | Planned |

Skills to cover:

* IP addresses
* Ports
* DNS
* Routes
* Connectivity checks
* Basic troubleshooting commands
* `ip`
* `ping`
* `ss`
* `curl`
* `dig`
* `traceroute`

---

## Phase 4: Bash Scripting

Goal:

Learn basic automation using Bash.

Module:

| Module | Topic          | Status  |
| ------ | -------------- | ------- |
| 07     | Bash Scripting | Planned |

Skills to cover:

* Variables
* Conditions
* Loops
* Functions
* Script permissions
* Simple automation
* Input and output
* Exit codes

---

## Phase 5: System Administration

Goal:

Build practical Linux administration habits.

Module:

| Module | Topic                 | Status  |
| ------ | --------------------- | ------- |
| 08     | System Administration | Planned |

Skills to cover:

* Managing users
* Reviewing logs
* Managing services
* Monitoring disk usage
* Checking system health
* Understanding configuration files
* Basic troubleshooting

---

## Phase 6: Cybersecurity CLI Basics

Goal:

Introduce cybersecurity-focused Linux command line skills.

Module:

| Module | Topic                    | Status  |
| ------ | ------------------------ | ------- |
| 09     | Cybersecurity CLI Basics | Planned |

Skills to cover:

* Safe lab setup
* Permission awareness
* Hashing files
* Checking open ports
* Reading logs
* Basic Nmap usage
* Defensive Linux habits
* Ethical practice

---

## Module Build Standard

Every module should include:

| Required File                               | Purpose         |
| ------------------------------------------- | --------------- |
| `README.md`                                 | Module overview |
| `lesson.md`                                 | Full lesson     |
| `practice.md`                               | Guided practice |
| `labs/lab-XX-topic.md`                      | Hands-on lab    |
| `challenges/beginner/challenge-XX-topic.md` | Skill challenge |
| `quizzes/quiz-XX-topic.md`                  | Knowledge check |

---

## Completed Module Links

| Module | Topic                 | Links                                                                                                                                                                                                                                                                                                                                     |
| ------ | --------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 00     | Getting Started       | [Lesson](lessons/00-getting-started/README.md), [Lab](labs/lab-01-terminal-basics.md), [Quiz](quizzes/quiz-01-terminal-basics.md)                                                                                                                                                                                                         |
| 01     | Navigation            | [Overview](lessons/01-navigation/README.md), [Lesson](lessons/01-navigation/lesson.md), [Practice](lessons/01-navigation/practice.md), [Lab](labs/lab-02-file-navigation.md), [Challenge](challenges/beginner/challenge-01-file-hunter.md), [Quiz](quizzes/quiz-02-navigation.md)                                                         |
| 02     | Files and Directories | [Overview](lessons/02-files-and-directories/README.md), [Lesson](lessons/02-files-and-directories/lesson.md), [Practice](lessons/02-files-and-directories/practice.md), [Lab](labs/lab-03-files-and-directories.md), [Challenge](challenges/beginner/challenge-02-directory-builder.md), [Quiz](quizzes/quiz-03-files-and-directories.md) |

---

## Next Build Queue

Build Module 03 in this order:

1. `lessons/03-users-and-permissions/README.md`
2. `lessons/03-users-and-permissions/lesson.md`
3. `lessons/03-users-and-permissions/practice.md`
4. `labs/lab-04-users-and-permissions.md`
5. `challenges/beginner/challenge-03-permission-fix.md`
6. `quizzes/quiz-04-users-and-permissions.md`

---

## Long-Term Additions

Planned future improvements:

* GitHub Pages documentation site
* Visual landing page
* Downloadable cheatsheets
* More beginner challenges
* Intermediate Linux challenges
* Bash script examples
* Cybersecurity CLI labs
* Nmap mini-course
* Linux troubleshooting playbook
* Student progress checklist

---

## Build Rule

Each module should follow this learning loop:

```text
Lesson → Practice → Lab → Challenge → Quiz
```

The goal is not just to read Linux commands.

The goal is to use them repeatedly until they become natural.
