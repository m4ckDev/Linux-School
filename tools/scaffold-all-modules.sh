#!/usr/bin/env bash
set -euo pipefail

mkdir -p lessons labs challenges/beginner quizzes tools

MODULES=(
"00|getting-started|Getting Started|pwd ls clear whoami man"
"01|navigation|Navigation|pwd ls cd tree"
"02|files-and-directories|Files and Directories|touch mkdir cp mv rm cat"
"03|users-and-permissions|Users and Permissions|whoami id groups chmod chown stat"
"04|processes-and-services|Processes and Services|ps top pgrep kill pkill systemctl journalctl"
"05|package-management|Package Management|apt apt-cache dpkg snap"
"06|searching-and-finding-files|Searching and Finding Files|find locate grep which whereis"
"07|text-processing|Text Processing|cat less head tail sort uniq cut awk sed"
"08|networking-basics|Networking Basics|ip ping ss curl wget traceroute"
"09|storage-and-filesystems|Storage and Filesystems|df du lsblk mount umount blkid"
"10|bash-scripting-basics|Bash Scripting Basics|bash chmod echo read variables if loops"
"11|logs-and-troubleshooting|Logs and Troubleshooting|journalctl dmesg tail grep systemctl"
"12|security-fundamentals|Security Fundamentals|chmod chown sudo ufw ssh fail2ban"
)

write_if_missing() {
    local file="$1"
    local content="$2"

    if [ ! -f "$file" ]; then
        printf "%s\n" "$content" > "$file"
        echo "Created: $file"
    else
        echo "Skipped existing: $file"
    fi
}

for row in "${MODULES[@]}"; do
    IFS='|' read -r num slug topic commands <<< "$row"

    lesson_dir="lessons/${num}-${slug}"
    lab_num=$(printf "%02d" $((10#$num + 1)))
    lab_file="labs/lab-${lab_num}-${slug}.md"
    quiz_file="quizzes/quiz-${lab_num}-${slug}.md"

    if [ "$num" = "03" ]; then
        challenge_file="challenges/beginner/challenge-03-permission-fix.md"
    else
        challenge_file="challenges/beginner/challenge-${num}-${slug}.md"
    fi

    mkdir -p "$lesson_dir"

    write_if_missing "$lesson_dir/README.md" "# Module ${num} — ${topic}

## Overview

This module introduces **${topic}** as part of the Linux School learning path.

The goal is to help learners understand the commands, practice them safely, and build real Linux terminal confidence.

---

## Module Files

| File | Purpose |
|---|---|
| [lesson.md](lesson.md) | Main teaching file |
| [practice.md](practice.md) | Guided hands-on practice |
| [Lab](../../${lab_file}) | Full lab assignment |
| [Challenge](../../${challenge_file}) | Beginner challenge |
| [Quiz](../../${quiz_file}) | Knowledge check |

---

## Commands Covered

\`\`\`bash
${commands}
\`\`\`

---

## Learning Goals

By the end of this module, learners should be able to:

1. Explain the purpose of the core commands.
2. Run the commands safely in a Linux terminal.
3. Read command output and understand what it means.
4. Troubleshoot basic mistakes.
5. Apply the skill in a real Linux environment.

---

## Status

This module has been scaffolded and is ready for full lesson development."

    write_if_missing "$lesson_dir/lesson.md" "# Lesson — ${topic}

## Purpose

This lesson teaches the basics of **${topic}** in Linux.

The focus is practical understanding, not memorization.

---

## Commands Introduced

\`\`\`bash
${commands}
\`\`\`

---

## Why This Matters

Linux users need to understand ${topic} because it affects daily terminal work, troubleshooting, system administration, and cybersecurity tasks.

Strong fundamentals make advanced tools easier to understand later.

---

## Core Concept

Before using commands, understand what problem they solve.

Ask:

1. What am I trying to inspect?
2. What am I trying to change?
3. What output should I expect?
4. What mistake could this command cause?

---

## Command Practice

Run each command in a safe practice folder or lab environment.

Recommended practice location:

\`\`\`bash
mkdir -p ~/linux-school-practice/module-${num}
cd ~/linux-school-practice/module-${num}
\`\`\`

---

## Notes

This lesson is scaffolded.

Full teaching content will be expanded later."

    write_if_missing "$lesson_dir/practice.md" "# Practice — ${topic}

## Goal

Practice the commands from Module ${num}: **${topic}**.

---

## Setup

Create a safe practice folder:

\`\`\`bash
mkdir -p ~/linux-school-practice/module-${num}
cd ~/linux-school-practice/module-${num}
\`\`\`

---

## Commands to Practice

\`\`\`bash
${commands}
\`\`\`

---

## Practice Tasks

Complete the following:

1. Run each command once.
2. Read the output.
3. Write down what the command showed or changed.
4. Run the command again with a different option if possible.
5. Explain the command in your own words.

---

## Reflection Questions

Answer these:

1. Which command was the easiest to understand?
2. Which command was the most confusing?
3. What output did you not expect?
4. How could this skill help in troubleshooting?
5. How could this skill help in cybersecurity?

---

## Cleanup

When finished, remove the practice folder if you no longer need it:

\`\`\`bash
rm -rf ~/linux-school-practice/module-${num}
\`\`\`

---

## Status

This practice file is scaffolded and ready for expansion."

    write_if_missing "$lab_file" "# Lab ${lab_num} — ${topic}

## Objective

Complete a hands-on Linux lab focused on **${topic}**.

---

## Lab Environment

Use one of the following:

- Ubuntu VM
- Debian VM
- Kali VM
- WSL
- Spare Linux laptop
- Cloud Linux instance

---

## Setup

\`\`\`bash
mkdir -p ~/linux-school-labs/lab-${lab_num}
cd ~/linux-school-labs/lab-${lab_num}
\`\`\`

---

## Commands Used

\`\`\`bash
${commands}
\`\`\`

---

## Lab Tasks

1. Prepare the lab folder.
2. Run the required commands.
3. Capture important output.
4. Fix at least one intentional mistake.
5. Explain what changed on the system.

---

## Success Criteria

You complete this lab when you can:

- Run the core commands without copying blindly.
- Explain what each command does.
- Read the output correctly.
- Identify and correct a basic issue.

---

## Cleanup

\`\`\`bash
rm -rf ~/linux-school-labs/lab-${lab_num}
\`\`\`

---

## Status

This lab is scaffolded and ready for full development."

    write_if_missing "$challenge_file" "# Challenge ${num} — ${topic}

## Scenario

You are working in a Linux environment and need to solve a beginner-level issue related to **${topic}**.

---

## Mission

Use the skills from Module ${num} to inspect the system, identify the issue, and apply the correct fix.

---

## Allowed Commands

\`\`\`bash
${commands}
\`\`\`

---

## Challenge Tasks

1. Read the scenario carefully.
2. Inspect the environment.
3. Identify the problem.
4. Apply the fix.
5. Verify the result.
6. Explain what you did.

---

## Rules

- Do not guess.
- Read command output.
- Use a safe lab folder.
- Avoid unnecessary \`sudo\`.
- Verify before and after making changes.

---

## Success Criteria

You pass the challenge when:

- The issue is fixed.
- The final command output proves the fix worked.
- You can explain the solution in plain language.

---

## Status

This challenge is scaffolded and ready for full development."

    write_if_missing "$quiz_file" "# Quiz ${lab_num} — ${topic}

## Instructions

Answer the questions below after completing the lesson, practice, and lab for **${topic}**.

---

## Questions

1. What is the main purpose of this module?
2. Which command from this module was most useful?
3. What does the command output tell you?
4. What mistake should beginners avoid with this topic?
5. How can this skill help with Linux troubleshooting?
6. How can this skill help with cybersecurity?
7. What command would you use first when investigating this topic?
8. What is one real-world example of this skill?
9. What is one command option or flag you want to learn more about?
10. Explain this topic in your own words.

---

## Answer Key

This quiz is scaffolded.

The full answer key will be added when the module is fully developed.

---

## Status

This quiz is scaffolded and ready for expansion."
done

cat > README.md <<'EOF'
<div align="center">

```text
██╗     ██╗███╗   ██╗██╗   ██╗██╗  ██╗    ███████╗ ██████╗██╗  ██╗ ██████╗  ██████╗ ██╗     
██║     ██║████╗  ██║██║   ██║╚██╗██╔╝    ██╔════╝██╔════╝██║  ██║██╔═══██╗██╔═══██╗██║     
██║     ██║██╔██╗ ██║██║   ██║ ╚███╔╝     ███████╗██║     ███████║██║   ██║██║   ██║██║     
██║     ██║██║╚██╗██║██║   ██║ ██╔██╗     ╚════██║██║     ██╔══██║██║   ██║██║   ██║██║     
███████╗██║██║ ╚████║╚██████╔╝██╔╝ ██╗    ███████║╚██████╗██║  ██║╚██████╔╝╚██████╔╝███████╗
╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝    ╚══════╝ ╚═════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚══════╝
