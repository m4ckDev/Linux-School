<div align="center">

```text
██╗     ██╗███╗   ██╗██╗   ██╗██╗  ██╗    ███████╗ ██████╗██╗  ██╗ ██████╗  ██████╗ ██╗     
██║     ██║████╗  ██║██║   ██║╚██╗██╔╝    ██╔════╝██╔════╝██║  ██║██╔═══██╗██╔═══██╗██║     
██║     ██║██╔██╗ ██║██║   ██║ ╚███╔╝     ███████╗██║     ███████║██║   ██║██║   ██║██║     
██║     ██║██║╚██╗██║██║   ██║ ██╔██╗     ╚════██║██║     ██╔══██║██║   ██║██║   ██║██║     
███████╗██║██║ ╚████║╚██████╔╝██╔╝ ██╗    ███████║╚██████╗██║  ██║╚██████╔╝╚██████╔╝███████╗
╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝    ╚══════╝ ╚═════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚══════╝
```

# Linux School

### Hands-On Linux CLI Training Platform

**Built by [m4ckDev](https://github.com/m4ckDev)**

![Status](https://img.shields.io/badge/status-in%20progress-blue)
![Focus](https://img.shields.io/badge/focus-linux%20cli-green)
![Level](https://img.shields.io/badge/level-beginner%20to%20intermediate-orange)
![CLI](https://img.shields.io/badge/CLI-enabled-brightgreen)
![Website](https://img.shields.io/badge/website-Docusaurus-purple)
![Built With](https://img.shields.io/badge/built%20with-markdown-black)

</div>

<p align="right">
  <a href="https://buymeacoffee.com/itsmack">
    <strong>☕ Buy Me a Coffee</strong>
  </a>
  <br>
  <sub>Support future Linux School lessons, labs, CLI tools, and website updates.</sub>
</p>

---

## What Is Linux School?

**Linux School** is a hands-on Linux command line training platform built for people who want to learn Linux by actually using the terminal.

This project includes:

* Lessons
* Practice files
* Hands-on labs
* Beginner challenges
* Quizzes
* A terminal-based CLI launcher
* A Docusaurus website portal

The goal is simple:

```text
Open the terminal.
Run the commands.
Break small things.
Fix them.
Build real Linux skill.
```

---

## Start Here / Direct Access

New to Linux School? Use these links instead of digging through folders.

| What You Want To Do                  | Go Here                                 |
| ------------------------------------ | --------------------------------------- |
| Learn how to use Linux School        | [Start Here](START_HERE.md)             |
| Download and run the project locally | [Download Guide](DOWNLOAD.md)           |
| Use the terminal-based course menu   | [CLI Guide](CLI_GUIDE.md)               |
| View the full module roadmap         | [Module Roadmap](MODULE_ROADMAP.md)     |
| Run or build the website             | [Website Build Guide](WEBSITE_BUILD.md) |

---

## Quick Start

Clone the repository:

```bash
git clone https://github.com/m4ckDev/Linux-School.git
cd Linux-School
```

Run the Linux School CLI:

```bash
bash tools/linux-school.sh
```

List all modules:

```bash
bash tools/linux-school.sh list
```

Open Module 03 lesson directly:

```bash
bash tools/linux-school.sh open 03 lesson
```

Open Module 04 overview directly:

```bash
bash tools/linux-school.sh open 04 overview
```

When a file opens in the terminal viewer, press:

```text
q
```

to quit.

---

## Run the Website Locally

Linux School also includes a local website built with Docusaurus.

From the repo root:

```bash
cd website
npm install
npm start
```

Then open:

```text
http://localhost:3000/Linux-School/
```

The website only runs while `npm start` is still running.

For more details, read:

```text
WEBSITE_BUILD.md
```

---

## Who This Is For

Linux School is for:

* New Linux users
* Cybersecurity students
* Homelab builders
* Help desk learners
* Future system administrators
* Anyone trying to get comfortable with the terminal

No advanced Linux experience is required.

---

## How the Course Works

Each module follows the same structure:

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

Linux is learned through repetition, not memorization.

---

## Current Module Roadmap

| Module | Topic                       | Overview                                                     | Lesson                                                     | Practice                                                       | Lab                                               | Challenge                                                                    | Quiz                                                   | Status      |
| ------ | --------------------------- | ------------------------------------------------------------ | ---------------------------------------------------------- | -------------------------------------------------------------- | ------------------------------------------------- | ---------------------------------------------------------------------------- | ------------------------------------------------------ | ----------- |
| 00     | Getting Started             | [Overview](lessons/00-getting-started/README.md)             | [Lesson](lessons/00-getting-started/lesson.md)             | [Practice](lessons/00-getting-started/practice.md)             | [Lab](labs/lab-01-getting-started.md)             | [Challenge](challenges/beginner/challenge-00-getting-started.md)             | [Quiz](quizzes/quiz-01-getting-started.md)             | Built       |
| 01     | Navigation                  | [Overview](lessons/01-navigation/README.md)                  | [Lesson](lessons/01-navigation/lesson.md)                  | [Practice](lessons/01-navigation/practice.md)                  | [Lab](labs/lab-02-navigation.md)                  | [Challenge](challenges/beginner/challenge-01-navigation.md)                  | [Quiz](quizzes/quiz-02-navigation.md)                  | Built       |
| 02     | Files and Directories       | [Overview](lessons/02-files-and-directories/README.md)       | [Lesson](lessons/02-files-and-directories/lesson.md)       | [Practice](lessons/02-files-and-directories/practice.md)       | [Lab](labs/lab-03-files-and-directories.md)       | [Challenge](challenges/beginner/challenge-02-files-and-directories.md)       | [Quiz](quizzes/quiz-03-files-and-directories.md)       | Built       |
| 03     | Users and Permissions       | [Overview](lessons/03-users-and-permissions/README.md)       | [Lesson](lessons/03-users-and-permissions/lesson.md)       | [Practice](lessons/03-users-and-permissions/practice.md)       | [Lab](labs/lab-04-users-and-permissions.md)       | [Challenge](challenges/beginner/challenge-03-permission-fix.md)              | [Quiz](quizzes/quiz-04-users-and-permissions.md)       | Built       |
| 04     | Processes and Services      | [Overview](lessons/04-processes-and-services/README.md)      | [Lesson](lessons/04-processes-and-services/lesson.md)      | [Practice](lessons/04-processes-and-services/practice.md)      | [Lab](labs/lab-05-processes-and-services.md)      | [Challenge](challenges/beginner/challenge-04-processes-and-services.md)      | [Quiz](quizzes/quiz-05-processes-and-services.md)      | In Progress |
| 05     | Package Management          | [Overview](lessons/05-package-management/README.md)          | [Lesson](lessons/05-package-management/lesson.md)          | [Practice](lessons/05-package-management/practice.md)          | [Lab](labs/lab-06-package-management.md)          | [Challenge](challenges/beginner/challenge-05-package-management.md)          | [Quiz](quizzes/quiz-06-package-management.md)          | Scaffolded  |
| 06     | Searching and Finding Files | [Overview](lessons/06-searching-and-finding-files/README.md) | [Lesson](lessons/06-searching-and-finding-files/lesson.md) | [Practice](lessons/06-searching-and-finding-files/practice.md) | [Lab](labs/lab-07-searching-and-finding-files.md) | [Challenge](challenges/beginner/challenge-06-searching-and-finding-files.md) | [Quiz](quizzes/quiz-07-searching-and-finding-files.md) | Scaffolded  |
| 07     | Text Processing             | [Overview](lessons/07-text-processing/README.md)             | [Lesson](lessons/07-text-processing/lesson.md)             | [Practice](lessons/07-text-processing/practice.md)             | [Lab](labs/lab-08-text-processing.md)             | [Challenge](challenges/beginner/challenge-07-text-processing.md)             | [Quiz](quizzes/quiz-08-text-processing.md)             | Scaffolded  |
| 08     | Networking Basics           | [Overview](lessons/08-networking-basics/README.md)           | [Lesson](lessons/08-networking-basics/lesson.md)           | [Practice](lessons/08-networking-basics/practice.md)           | [Lab](labs/lab-09-networking-basics.md)           | [Challenge](challenges/beginner/challenge-08-networking-basics.md)           | [Quiz](quizzes/quiz-09-networking-basics.md)           | Scaffolded  |
| 09     | Storage and Filesystems     | [Overview](lessons/09-storage-and-filesystems/README.md)     | [Lesson](lessons/09-storage-and-filesystems/lesson.md)     | [Practice](lessons/09-storage-and-filesystems/practice.md)     | [Lab](labs/lab-10-storage-and-filesystems.md)     | [Challenge](challenges/beginner/challenge-09-storage-and-filesystems.md)     | [Quiz](quizzes/quiz-10-storage-and-filesystems.md)     | Scaffolded  |
| 10     | Bash Scripting Basics       | [Overview](lessons/10-bash-scripting-basics/README.md)       | [Lesson](lessons/10-bash-scripting-basics/lesson.md)       | [Practice](lessons/10-bash-scripting-basics/practice.md)       | [Lab](labs/lab-11-bash-scripting-basics.md)       | [Challenge](challenges/beginner/challenge-10-bash-scripting-basics.md)       | [Quiz](quizzes/quiz-11-bash-scripting-basics.md)       | Scaffolded  |
| 11     | Logs and Troubleshooting    | [Overview](lessons/11-logs-and-troubleshooting/README.md)    | [Lesson](lessons/11-logs-and-troubleshooting/lesson.md)    | [Practice](lessons/11-logs-and-troubleshooting/practice.md)    | [Lab](labs/lab-12-logs-and-troubleshooting.md)    | [Challenge](challenges/beginner/challenge-11-logs-and-troubleshooting.md)    | [Quiz](quizzes/quiz-12-logs-and-troubleshooting.md)    | Scaffolded  |
| 12     | Security Fundamentals       | [Overview](lessons/12-security-fundamentals/README.md)       | [Lesson](lessons/12-security-fundamentals/lesson.md)       | [Practice](lessons/12-security-fundamentals/practice.md)       | [Lab](labs/lab-13-security-fundamentals.md)       | [Challenge](challenges/beginner/challenge-12-security-fundamentals.md)       | [Quiz](quizzes/quiz-13-security-fundamentals.md)       | Scaffolded  |

---

## Status Key

| Status      | Meaning                                                             |
| ----------- | ------------------------------------------------------------------- |
| Built       | File exists and has usable learning content                         |
| In Progress | Module is actively being developed                                  |
| Scaffolded  | File exists and links work, but full content will be expanded later |
| Planned     | Not created yet                                                     |

---

## Repository Structure

```text
Linux-School/
├── README.md
├── START_HERE.md
├── DOWNLOAD.md
├── CLI_GUIDE.md
├── MODULE_ROADMAP.md
├── WEBSITE_BUILD.md
├── lessons/
├── labs/
├── challenges/
├── quizzes/
├── tools/
└── website/
```

---

## Main Project Areas

| Area                       | Purpose                                       |
| -------------------------- | --------------------------------------------- |
| [lessons/](lessons/)       | Module overviews, lessons, and practice files |
| [labs/](labs/)             | Hands-on labs                                 |
| [challenges/](challenges/) | Beginner challenges                           |
| [quizzes/](quizzes/)       | Knowledge checks                              |
| [tools/](tools/)           | CLI and helper scripts                        |
| [website/](website/)       | Docusaurus website source                     |

---

## CLI Classroom

The CLI launcher lets users learn without bouncing around GitHub.

Run:

```bash
bash tools/linux-school.sh
```

Direct examples:

```bash
bash tools/linux-school.sh list
bash tools/linux-school.sh open 00 lesson
bash tools/linux-school.sh open 03 lab
bash tools/linux-school.sh open 04 overview
bash tools/linux-school.sh setup
```

---

## Website Portal

The website is the visual front door for Linux School.

Run locally:

```bash
cd website
npm install
npm start
```

Build the website:

```bash
cd website
npm run build
```

Preview the production build:

```bash
cd website
npm run serve -- --host 0.0.0.0 --port 3000
```

Read the full guide:

```text
WEBSITE_BUILD.md
```

---

## Practice Safely

Create safe practice folders:

```bash
mkdir -p ~/linux-school-practice
mkdir -p ~/linux-school-labs
mkdir -p ~/linux-school-challenges
```

Before running a command, ask:

```text
What does this command do?
Where am I running it?
What files or folders will it affect?
Can I undo this?
```

Important rules:

1. Always check your location with `pwd`.
2. List files before deleting anything.
3. Be careful with `rm`.
4. Do not copy random `sudo` commands.
5. Practice in a lab, VM, or safe folder.
6. Read errors instead of ignoring them.

---

## For Cybersecurity Learners

Linux is a core cybersecurity skill.

This repo builds the foundation needed for:

* Kali Linux
* Penetration testing
* Capture the Flag practice
* Log analysis
* Server hardening
* File permission auditing
* Bash scripting
* Network troubleshooting
* Homelab administration
* Incident response basics

```text
Tools change.
Linux fundamentals stay.
```

---

## Support Linux School

If Linux School helped you learn Linux, cybersecurity, or command line skills, consider supporting future lessons, labs, challenges, CLI tools, and website updates.

<a href="https://buymeacoffee.com/itsmack">
  <strong>☕ Buy Me a Coffee</strong>
</a>

Other ways to support:

* Star the repo
* Share it with someone learning Linux
* Report issues
* Suggest better labs or challenges
* Contribute improvements

---

## Current Build Focus

```text
Completed module:
  03-users-and-permissions

Current module:
  04-processes-and-services

Website:
  Docusaurus foundation created
  Local website preview working
  Website build guide added
```

---

## Contribution Notes

Each module should include:

```text
README.md
lesson.md
practice.md
lab file
challenge file
quiz file
```

Rule for links:

```text
Only link to files after they exist.
```

Now that the full course is scaffolded, roadmap links should stay live while detailed content is expanded.

---

## License

This project is for educational use.

A formal license may be added later.

---

<div align="center">

```text
root@linux-school:~$ start-learning
```

**Open the terminal. Run the commands. Build the skill.**

</div>
