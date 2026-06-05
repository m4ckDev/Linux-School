#!/usr/bin/env bash
set -euo pipefail

echo "============================================================"
echo " Building Linux School Website"
echo "============================================================"

if ! command -v node >/dev/null 2>&1; then
  echo "ERROR: Node.js is not installed."
  echo "Install Node.js first, then rerun this script."
  exit 1
fi

if ! command -v npm >/dev/null 2>&1; then
  echo "ERROR: npm is not installed."
  echo "Install npm first, then rerun this script."
  exit 1
fi

echo "[1/7] Node version:"
node -v

echo "[2/7] npm version:"
npm -v

if [ -d "website" ]; then
  backup="website-backup-$(date +%Y%m%d-%H%M%S)"
  echo "[3/7] Existing website folder found. Backing it up to $backup"
  mv website "$backup"
else
  echo "[3/7] No existing website folder found."
fi

echo "[4/7] Creating Docusaurus website..."
npx create-docusaurus@latest website classic --typescript

echo "[5/7] Customizing Linux School website..."

cat > website/docusaurus.config.ts <<'EOF'
import {themes as prismThemes} from 'prism-react-renderer';
import type {Config} from '@docusaurus/types';
import type {Options as PresetOptions} from '@docusaurus/preset-classic';

const config: Config = {
  title: 'Linux School',
  tagline: 'Hands-on Linux command line training built for real terminal practice.',
  favicon: 'img/favicon.ico',

  url: 'https://m4ckdev.github.io',
  baseUrl: '/Linux-School/',

  organizationName: 'm4ckDev',
  projectName: 'Linux-School',

  onBrokenLinks: 'warn',
  onBrokenMarkdownLinks: 'warn',

  i18n: {
    defaultLocale: 'en',
    locales: ['en'],
  },

  presets: [
    [
      'classic',
      {
        docs: {
          sidebarPath: './sidebars.ts',
          routeBasePath: 'docs',
        },
        blog: false,
        theme: {
          customCss: './src/css/custom.css',
        },
      } satisfies PresetOptions,
    ],
  ],

  themeConfig: {
    image: 'img/linux-school-social-card.jpg',
    navbar: {
      title: 'Linux School',
      logo: {
        alt: 'Linux School Logo',
        src: 'img/logo.svg',
      },
      items: [
        {
          type: 'docSidebar',
          sidebarId: 'courseSidebar',
          position: 'left',
          label: 'Course',
        },
        {
          to: '/docs/start-here',
          label: 'Start Here',
          position: 'left',
        },
        {
          to: '/docs/download-and-run',
          label: 'Download',
          position: 'left',
        },
        {
          href: 'https://github.com/m4ckDev/Linux-School',
          label: 'GitHub',
          position: 'right',
        },
      ],
    },
    footer: {
      style: 'dark',
      links: [
        {
          title: 'Learn',
          items: [
            {
              label: 'Start Here',
              to: '/docs/start-here',
            },
            {
              label: 'CLI Guide',
              to: '/docs/cli-guide',
            },
            {
              label: 'Module Roadmap',
              to: '/docs/modules',
            },
          ],
        },
        {
          title: 'Project',
          items: [
            {
              label: 'GitHub Repository',
              href: 'https://github.com/m4ckDev/Linux-School',
            },
            {
              label: 'Download and Run',
              to: '/docs/download-and-run',
            },
          ],
        },
      ],
      copyright: `Copyright © ${new Date().getFullYear()} Linux School. Built by m4ckDev.`,
    },
    prism: {
      theme: prismThemes.github,
      darkTheme: prismThemes.dracula,
    },
  },
};

export default config;
EOF

cat > website/sidebars.ts <<'EOF'
import type {SidebarsConfig} from '@docusaurus/plugin-content-docs';

const sidebars: SidebarsConfig = {
  courseSidebar: [
    'start-here',
    'download-and-run',
    'cli-guide',
    {
      type: 'category',
      label: 'Modules',
      items: [
        'modules/index',
        'modules/module-00',
        'modules/module-01',
        'modules/module-02',
        'modules/module-03',
        'modules/module-04',
        'modules/module-05',
        'modules/module-06',
        'modules/module-07',
        'modules/module-08',
        'modules/module-09',
        'modules/module-10',
        'modules/module-11',
        'modules/module-12',
      ],
    },
  ],
};

export default sidebars;
EOF

mkdir -p website/src/pages
mkdir -p website/src/css
mkdir -p website/docs/modules
mkdir -p website/static/img

cat > website/src/pages/index.tsx <<'EOF'
import React from 'react';
import Link from '@docusaurus/Link';
import Layout from '@theme/Layout';

const modules = [
  ['00', 'Getting Started', 'Terminal basics and safe setup'],
  ['01', 'Navigation', 'Move around the Linux filesystem'],
  ['02', 'Files and Directories', 'Create, move, copy, and remove files'],
  ['03', 'Users and Permissions', 'Users, groups, chmod, chown, and stat'],
  ['04', 'Processes and Services', 'ps, top, kill, systemctl, and journalctl'],
  ['05', 'Package Management', 'Install, update, and inspect packages'],
];

function Feature({title, text}: {title: string; text: string}) {
  return (
    <div className="featureCard">
      <h3>{title}</h3>
      <p>{text}</p>
    </div>
  );
}

export default function Home(): JSX.Element {
  return (
    <Layout
      title="Linux School"
      description="Hands-on Linux CLI training for beginners, cybersecurity students, and homelab builders.">
      <main>
        <section className="heroSection">
          <div className="heroContent">
            <div className="eyebrow">Hands-On Linux CLI Training</div>
            <h1>Learn Linux by actually using the terminal.</h1>
            <p className="heroText">
              Linux School is a structured command line course with lessons, practice files,
              labs, challenges, quizzes, and a local CLI launcher.
            </p>
            <div className="buttonRow">
              <Link className="button button--primary button--lg" to="/docs/start-here">
                Start Learning
              </Link>
              <Link className="button button--secondary button--lg" to="/docs/download-and-run">
                Download and Run Locally
              </Link>
            </div>
            <pre className="terminalBox">
{`git clone https://github.com/m4ckDev/Linux-School.git
cd Linux-School
bash tools/linux-school.sh`}
            </pre>
          </div>
        </section>

        <section className="section">
          <div className="sectionHeader">
            <h2>Three ways to learn</h2>
            <p>Website for browsing. GitHub for source. CLI for hands-on training.</p>
          </div>
          <div className="featureGrid">
            <Feature title="Website Portal" text="Browse the roadmap, setup guide, and learning path from a clean course website." />
            <Feature title="GitHub Repository" text="Download the full course, review files, track changes, and contribute later." />
            <Feature title="CLI Classroom" text="Run Linux School directly from your terminal and open lessons, labs, and quizzes locally." />
          </div>
        </section>

        <section className="section darkPanel">
          <div className="sectionHeader">
            <h2>Module Roadmap</h2>
            <p>Start at Module 00 and build skill one layer at a time.</p>
          </div>
          <div className="moduleGrid">
            {modules.map(([num, title, text]) => (
              <div className="moduleCard" key={num}>
                <span className="moduleNumber">Module {num}</span>
                <h3>{title}</h3>
                <p>{text}</p>
              </div>
            ))}
          </div>
          <div className="centerButton">
            <Link className="button button--primary" to="/docs/modules">
              View Full Roadmap
            </Link>
          </div>
        </section>

        <section className="section">
          <div className="sectionHeader">
            <h2>Built for real practice</h2>
            <p>Each module follows the same training pattern.</p>
          </div>
          <div className="flow">
            <span>Overview</span>
            <span>Lesson</span>
            <span>Practice</span>
            <span>Lab</span>
            <span>Challenge</span>
            <span>Quiz</span>
          </div>
        </section>
      </main>
    </Layout>
  );
}
EOF

cat > website/src/css/custom.css <<'EOF'
:root {
  --ifm-color-primary: #16a34a;
  --ifm-color-primary-dark: #15803d;
  --ifm-color-primary-darker: #166534;
  --ifm-color-primary-darkest: #14532d;
  --ifm-color-primary-light: #22c55e;
  --ifm-color-primary-lighter: #4ade80;
  --ifm-color-primary-lightest: #86efac;
  --ifm-background-color: #07120b;
  --ifm-font-family-base: Inter, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
}

[data-theme='dark'] {
  --ifm-background-color: #050a07;
  --ifm-navbar-background-color: #050a07;
  --ifm-footer-background-color: #030604;
}

.heroSection {
  min-height: 78vh;
  display: flex;
  align-items: center;
  background:
    radial-gradient(circle at top left, rgba(34, 197, 94, 0.25), transparent 32rem),
    radial-gradient(circle at bottom right, rgba(20, 184, 166, 0.15), transparent 28rem),
    linear-gradient(135deg, #020403 0%, #07120b 50%, #0b1f12 100%);
  color: white;
  border-bottom: 1px solid rgba(34, 197, 94, 0.25);
}

.heroContent {
  width: min(1120px, 92%);
  margin: 0 auto;
  padding: 5rem 0;
}

.eyebrow {
  color: #86efac;
  text-transform: uppercase;
  letter-spacing: 0.18em;
  font-size: 0.8rem;
  font-weight: 800;
  margin-bottom: 1rem;
}

.heroContent h1 {
  font-size: clamp(2.8rem, 7vw, 6.5rem);
  line-height: 0.95;
  max-width: 950px;
  margin-bottom: 1.5rem;
}

.heroText {
  font-size: 1.25rem;
  color: #d1fae5;
  max-width: 740px;
}

.buttonRow {
  display: flex;
  gap: 1rem;
  flex-wrap: wrap;
  margin: 2rem 0;
}

.terminalBox {
  background: #020403;
  color: #86efac;
  border: 1px solid rgba(134, 239, 172, 0.35);
  border-radius: 16px;
  padding: 1.4rem;
  max-width: 720px;
  box-shadow: 0 0 50px rgba(34, 197, 94, 0.12);
}

.section {
  padding: 5rem 0;
  width: min(1120px, 92%);
  margin: 0 auto;
}

.sectionHeader {
  text-align: center;
  margin-bottom: 2rem;
}

.sectionHeader h2 {
  font-size: clamp(2rem, 4vw, 3.2rem);
}

.sectionHeader p {
  color: var(--ifm-color-emphasis-700);
  font-size: 1.1rem;
}

.featureGrid,
.moduleGrid {
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 1.25rem;
}

.featureCard,
.moduleCard {
  border: 1px solid rgba(34, 197, 94, 0.18);
  border-radius: 18px;
  padding: 1.5rem;
  background: rgba(255, 255, 255, 0.03);
  box-shadow: 0 16px 45px rgba(0, 0, 0, 0.15);
}

.featureCard h3,
.moduleCard h3 {
  margin-bottom: 0.65rem;
}

.darkPanel {
  width: 100%;
  max-width: none;
  padding-left: max(4%, calc((100% - 1120px) / 2));
  padding-right: max(4%, calc((100% - 1120px) / 2));
  background: linear-gradient(135deg, #020403, #07120b);
  border-top: 1px solid rgba(34, 197, 94, 0.18);
  border-bottom: 1px solid rgba(34, 197, 94, 0.18);
}

.moduleNumber {
  color: #4ade80;
  font-weight: 800;
  font-size: 0.85rem;
  text-transform: uppercase;
  letter-spacing: 0.08em;
}

.centerButton {
  text-align: center;
  margin-top: 2rem;
}

.flow {
  display: flex;
  flex-wrap: wrap;
  gap: 0.75rem;
  justify-content: center;
}

.flow span {
  border: 1px solid rgba(34, 197, 94, 0.35);
  border-radius: 999px;
  padding: 0.75rem 1rem;
  background: rgba(34, 197, 94, 0.08);
  font-weight: 700;
}

@media (max-width: 900px) {
  .featureGrid,
  .moduleGrid {
    grid-template-columns: 1fr;
  }
}
EOF

cat > website/docs/start-here.md <<'EOF'
# Start Here

Linux School is a hands-on Linux command line course.

The goal is simple:

```text
Do not just read Linux.
Use Linux.
Break small things.
Fix them.
Repeat.
```

## Best learning path

Start at Module 00 and move forward in order.

1. Read the module overview.
2. Read the lesson.
3. Complete the practice file.
4. Complete the lab.
5. Attempt the challenge.
6. Take the quiz.
7. Repeat until the commands feel normal.

## Recommended terminal setup

Use one of these:

- Ubuntu virtual machine
- Debian virtual machine
- Kali Linux virtual machine
- WSL
- Raspberry Pi
- Spare Linux laptop
- Cloud Linux instance

For beginners, Ubuntu or Debian is recommended.

## Safe practice folders

```bash
mkdir -p ~/linux-school-practice
mkdir -p ~/linux-school-labs
mkdir -p ~/linux-school-challenges
```

## Main rule

```text
Inspect first.
Fix second.
Verify last.
```
EOF

cat > website/docs/download-and-run.md <<'EOF'
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
EOF

cat > website/docs/cli-guide.md <<'EOF'
# CLI Guide

Linux School includes a terminal launcher:

```bash
bash tools/linux-school.sh
```

## Interactive menu

```text
1) List modules
2) Open module overview
3) Open lesson
4) Open practice
5) Open lab
6) Open challenge
7) Open quiz
8) Create practice folders
9) Exit
```

## Direct commands

List modules:

```bash
bash tools/linux-school.sh list
```

Open a lesson:

```bash
bash tools/linux-school.sh open 03 lesson
```

Open a lab:

```bash
bash tools/linux-school.sh open 03 lab
```

Open a challenge:

```bash
bash tools/linux-school.sh open 03 challenge
```

Open a quiz:

```bash
bash tools/linux-school.sh open 03 quiz
```

Create practice folders:

```bash
bash tools/linux-school.sh setup
```

## Exiting files

Linux School opens files with `less`.

Press:

```text
q
```

to quit the viewer.
EOF

cat > website/docs/modules/index.md <<'EOF'
# Module Roadmap

Linux School is built as a structured course.

| Module | Topic | Status |
|---|---|---|
| 00 | Getting Started | Built |
| 01 | Navigation | Built |
| 02 | Files and Directories | Built |
| 03 | Users and Permissions | Built |
| 04 | Processes and Services | In Progress |
| 05 | Package Management | Scaffolded |
| 06 | Searching and Finding Files | Scaffolded |
| 07 | Text Processing | Scaffolded |
| 08 | Networking Basics | Scaffolded |
| 09 | Storage and Filesystems | Scaffolded |
| 10 | Bash Scripting Basics | Scaffolded |
| 11 | Logs and Troubleshooting | Scaffolded |
| 12 | Security Fundamentals | Scaffolded |

## Learning flow

Each module follows this pattern:

```text
Overview
Lesson
Practice
Lab
Challenge
Quiz
```
EOF

for i in {00..12}; do
  case "$i" in
    00) title="Getting Started" ;;
    01) title="Navigation" ;;
    02) title="Files and Directories" ;;
    03) title="Users and Permissions" ;;
    04) title="Processes and Services" ;;
    05) title="Package Management" ;;
    06) title="Searching and Finding Files" ;;
    07) title="Text Processing" ;;
    08) title="Networking Basics" ;;
    09) title="Storage and Filesystems" ;;
    10) title="Bash Scripting Basics" ;;
    11) title="Logs and Troubleshooting" ;;
    12) title="Security Fundamentals" ;;
  esac

  cat > "website/docs/modules/module-${i}.md" <<EOF
# Module ${i} — ${title}

This page is the website landing page for Module ${i}: **${title}**.

## Use the CLI

From the local Linux School repository:

\`\`\`bash
bash tools/linux-school.sh open ${i} overview
bash tools/linux-school.sh open ${i} lesson
bash tools/linux-school.sh open ${i} practice
bash tools/linux-school.sh open ${i} lab
bash tools/linux-school.sh open ${i} challenge
bash tools/linux-school.sh open ${i} quiz
\`\`\`

## Learning flow

1. Read the overview.
2. Study the lesson.
3. Complete the practice.
4. Complete the lab.
5. Attempt the challenge.
6. Take the quiz.

## Status

This module page is ready for website expansion.
EOF
done

cat > website/static/img/logo.svg <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" width="160" height="160" viewBox="0 0 160 160">
  <rect width="160" height="160" rx="28" fill="#050a07"/>
  <path d="M30 42h100v76H30z" fill="#07120b" stroke="#22c55e" stroke-width="6"/>
  <path d="M48 65l18 15-18 15" fill="none" stroke="#86efac" stroke-width="8" stroke-linecap="round" stroke-linejoin="round"/>
  <path d="M78 98h34" stroke="#86efac" stroke-width="8" stroke-linecap="round"/>
</svg>
EOF

echo "[6/7] Running build test..."
cd website
npm run build

echo "[7/7] Website build complete."
echo
echo "Next commands:"
echo "  cd website"
echo "  npm start"
