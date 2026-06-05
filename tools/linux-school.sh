#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

clear_screen() {
    command -v clear >/dev/null 2>&1 && clear || true
}

pause() {
    echo
    read -r -p "Press ENTER to continue..."
}

open_file() {
    local file="$1"

    if [ ! -f "$ROOT_DIR/$file" ]; then
        echo "File not found: $file"
        pause
        return
    fi

    less "$ROOT_DIR/$file"
}

show_banner() {
    cat <<'EOF'
============================================================
                 LINUX SCHOOL CLI
        Hands-On Linux Command Line Training
============================================================
EOF
}

list_modules() {
    cat <<'EOF'

Available Modules

00 - Getting Started
01 - Navigation
02 - Files and Directories
03 - Users and Permissions
04 - Processes and Services
05 - Package Management
06 - Searching and Finding Files
07 - Text Processing
08 - Networking Basics
09 - Storage and Filesystems
10 - Bash Scripting Basics
11 - Logs and Troubleshooting
12 - Security Fundamentals

EOF
}

module_path() {
    case "$1" in
        00) echo "00-getting-started" ;;
        01) echo "01-navigation" ;;
        02) echo "02-files-and-directories" ;;
        03) echo "03-users-and-permissions" ;;
        04) echo "04-processes-and-services" ;;
        05) echo "05-package-management" ;;
        06) echo "06-searching-and-finding-files" ;;
        07) echo "07-text-processing" ;;
        08) echo "08-networking-basics" ;;
        09) echo "09-storage-and-filesystems" ;;
        10) echo "10-bash-scripting-basics" ;;
        11) echo "11-logs-and-troubleshooting" ;;
        12) echo "12-security-fundamentals" ;;
        *) echo "" ;;
    esac
}

lab_path() {
    case "$1" in
        00) echo "labs/lab-01-getting-started.md" ;;
        01) echo "labs/lab-02-navigation.md" ;;
        02) echo "labs/lab-03-files-and-directories.md" ;;
        03) echo "labs/lab-04-users-and-permissions.md" ;;
        04) echo "labs/lab-05-processes-and-services.md" ;;
        05) echo "labs/lab-06-package-management.md" ;;
        06) echo "labs/lab-07-searching-and-finding-files.md" ;;
        07) echo "labs/lab-08-text-processing.md" ;;
        08) echo "labs/lab-09-networking-basics.md" ;;
        09) echo "labs/lab-10-storage-and-filesystems.md" ;;
        10) echo "labs/lab-11-bash-scripting-basics.md" ;;
        11) echo "labs/lab-12-logs-and-troubleshooting.md" ;;
        12) echo "labs/lab-13-security-fundamentals.md" ;;
        *) echo "" ;;
    esac
}

quiz_path() {
    case "$1" in
        00) echo "quizzes/quiz-01-getting-started.md" ;;
        01) echo "quizzes/quiz-02-navigation.md" ;;
        02) echo "quizzes/quiz-03-files-and-directories.md" ;;
        03) echo "quizzes/quiz-04-users-and-permissions.md" ;;
        04) echo "quizzes/quiz-05-processes-and-services.md" ;;
        05) echo "quizzes/quiz-06-package-management.md" ;;
        06) echo "quizzes/quiz-07-searching-and-finding-files.md" ;;
        07) echo "quizzes/quiz-08-text-processing.md" ;;
        08) echo "quizzes/quiz-09-networking-basics.md" ;;
        09) echo "quizzes/quiz-10-storage-and-filesystems.md" ;;
        10) echo "quizzes/quiz-11-bash-scripting-basics.md" ;;
        11) echo "quizzes/quiz-12-logs-and-troubleshooting.md" ;;
        12) echo "quizzes/quiz-13-security-fundamentals.md" ;;
        *) echo "" ;;
    esac
}

challenge_path() {
    case "$1" in
        03) echo "challenges/beginner/challenge-03-permission-fix.md" ;;
        *) 
            local slug
            slug="$(module_path "$1")"
            if [ -n "$slug" ]; then
                echo "challenges/beginner/challenge-${slug}.md"
            else
                echo ""
            fi
            ;;
    esac
}

open_module_file() {
    local module="$1"
    local filetype="$2"
    local slug

    slug="$(module_path "$module")"

    if [ -z "$slug" ]; then
        echo "Invalid module number: $module"
        pause
        return
    fi

    case "$filetype" in
        overview) open_file "lessons/$slug/README.md" ;;
        lesson) open_file "lessons/$slug/lesson.md" ;;
        practice) open_file "lessons/$slug/practice.md" ;;
        lab) open_file "$(lab_path "$module")" ;;
        challenge) open_file "$(challenge_path "$module")" ;;
        quiz) open_file "$(quiz_path "$module")" ;;
        *)
            echo "Invalid file type: $filetype"
            pause
            ;;
    esac
}

create_practice_folders() {
    mkdir -p "$HOME/linux-school-practice"
    mkdir -p "$HOME/linux-school-labs"
    mkdir -p "$HOME/linux-school-challenges"

    echo
    echo "Created practice folders:"
    echo "$HOME/linux-school-practice"
    echo "$HOME/linux-school-labs"
    echo "$HOME/linux-school-challenges"
    pause
}

choose_module() {
    read -r -p "Enter module number, example 03: " module
    case "$module" in
        0) module="00" ;;
        1) module="01" ;;
        2) module="02" ;;
        3) module="03" ;;
        4) module="04" ;;
        5) module="05" ;;
        6) module="06" ;;
        7) module="07" ;;
        8) module="08" ;;
        9) module="09" ;;
    esac
    echo "$module"
}

main_menu() {
    while true; do
        clear_screen
        show_banner

        cat <<'EOF'

1) List modules
2) Open module overview
3) Open lesson
4) Open practice
5) Open lab
6) Open challenge
7) Open quiz
8) Create practice folders
9) Exit

EOF

        read -r -p "Choose an option: " choice

        case "$choice" in
            1)
                list_modules
                pause
                ;;
            2)
                module="$(choose_module)"
                open_module_file "$module" "overview"
                ;;
            3)
                module="$(choose_module)"
                open_module_file "$module" "lesson"
                ;;
            4)
                module="$(choose_module)"
                open_module_file "$module" "practice"
                ;;
            5)
                module="$(choose_module)"
                open_module_file "$module" "lab"
                ;;
            6)
                module="$(choose_module)"
                open_module_file "$module" "challenge"
                ;;
            7)
                module="$(choose_module)"
                open_module_file "$module" "quiz"
                ;;
            8)
                create_practice_folders
                ;;
            9)
                echo "Exiting Linux School CLI."
                exit 0
                ;;
            *)
                echo "Invalid option."
                pause
                ;;
        esac
    done
}

usage() {
    cat <<'EOF'
Linux School CLI

Usage:
  bash tools/linux-school.sh

Optional direct commands:
  bash tools/linux-school.sh list
  bash tools/linux-school.sh open 03 overview
  bash tools/linux-school.sh open 03 lesson
  bash tools/linux-school.sh open 03 practice
  bash tools/linux-school.sh open 03 lab
  bash tools/linux-school.sh open 03 challenge
  bash tools/linux-school.sh open 03 quiz
  bash tools/linux-school.sh setup

Examples:
  bash tools/linux-school.sh list
  bash tools/linux-school.sh open 03 lesson
  bash tools/linux-school.sh open 03 lab
EOF
}

if [ "$#" -eq 0 ]; then
    main_menu
fi

case "${1:-}" in
    list)
        list_modules
        ;;
    open)
        if [ "$#" -ne 3 ]; then
            usage
            exit 1
        fi
        open_module_file "$2" "$3"
        ;;
    setup)
        create_practice_folders
        ;;
    help|-h|--help)
        usage
        ;;
    *)
        usage
        exit 1
        ;;
esac
