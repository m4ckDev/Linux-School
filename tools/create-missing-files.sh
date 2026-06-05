#!/usr/bin/env bash
set -euo pipefail

mkdir -p lessons labs challenges/beginner quizzes tools

MODULES=(
"00|geting-started|getting-started|Getting Started|01"
"01|navigation|navigation|Navigation|02"
"02|files-and-directories|files-and-directories|Files and Directories|03"
"03|users-and-permissions|users-and-permissions|Users and Permissions|04"
"04|processes-and-services|processes-and-services|Processes and Services|05"
"05|package-management|package-management|Package Management|06"
"06|searching-and-finding-files|searching-and-finding-files|Searching and Finding Files|07"
"07|text-processing|text-processing|Text Processing|08"
"08|networking-basics|networking-basics|Networking Basics|09"
"09|storage-and-filesystems|storage-and-filesystems|Storage and Filesystems|10"
"10|bash-scripting-basics|bash-scripting-basics|Bash Scripting Basics|11"
"11|logs-and-troubleshooting|logs-and-troubleshooting|Logs and Troubleshooting|12"
"12|security-fundamentals|security-fundamentals|Security Fundamentals|13"
)

write_if_missing() {
  file="$1"
  title="$2"

  if [ ! -f "$file" ]; then
    cat > "$file" <<EOF
# $title

## Status

This file has been scaffolded.

Full Linux School content will be expanded during the deep-build phase.

## Goal

This section will teach the learner through:

- Simple explanations
- Terminal commands
- Hands-on practice
- Troubleshooting
- Review questions

## Notes

This placeholder exists so GitHub roadmap links stay active while the course is being built.
EOF
    echo "Created: $file"
  else
    echo "Kept existing: $file"
  fi
}

for row in "${MODULES[@]}"; do
  IFS='|' read -r num typo_slug slug title labnum <<< "$row"

  lesson_dir="lessons/${num}-${slug}"
  mkdir -p "$lesson_dir"

  write_if_missing "$lesson_dir/README.md" "Module ${num} — ${title}"
  write_if_missing "$lesson_dir/lesson.md" "Lesson — ${title}"
  write_if_missing "$lesson_dir/practice.md" "Practice — ${title}"

  write_if_missing "labs/lab-${labnum}-${slug}.md" "Lab ${labnum} — ${title}"

  if [ "$num" = "03" ]; then
    write_if_missing "challenges/beginner/challenge-03-permission-fix.md" "Challenge 03 — Permission Fix"
  else
    write_if_missing "challenges/beginner/challenge-${num}-${slug}.md" "Challenge ${num} — ${title}"
  fi

  write_if_missing "quizzes/quiz-${labnum}-${slug}.md" "Quiz ${labnum} — ${title}"
done

echo
echo "Scaffold check complete."
