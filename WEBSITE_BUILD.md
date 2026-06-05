# Website Build Guide

This file explains how to run, build, and maintain the Linux School website.

The website is built with **Docusaurus** and lives inside the `website/` folder.

---

## Website Purpose

The website is the front door for Linux School.

It helps users:

- Understand what Linux School is
- Browse the module roadmap
- Learn how to download the repo
- Learn how to run the CLI launcher
- View the course in a clean website layout
- Get started without being confused by the full GitHub file structure

The GitHub repository is still the source of truth.

The CLI is still the hands-on classroom.

```text
Website = front door
GitHub = source code
CLI = hands-on classroom
```

---

## Website Folder Location

The website files are stored here:

```text
website/
```

Main files:

```text
website/
├── docusaurus.config.ts
├── sidebars.ts
├── package.json
├── docs/
├── src/
└── static/
```

---

## Requirements

Before running the website, you need:

- Node.js
- npm

Check if they are installed:

```bash
node -v
npm -v
```

If both commands return version numbers, you are good.

---

## Run the Website Locally

From the Linux School repo root:

```bash
cd website
npm start
```

Then open the local site in your browser.

Usually:

```text
http://localhost:3000/Linux-School/
```

If the terminal shows a different URL, use the URL printed in the terminal.

Important:

```text
The website only stays online while npm start is running.
Do not close that terminal if you want to keep viewing the local site.
```

---

## Stop the Website

To stop the local website server, press:

```text
CTRL + C
```

inside the terminal running `npm start`.

---

## Install Website Dependencies

If this is the first time running the website after cloning the repo, run:

```bash
cd website
npm install
```

Then start it:

```bash
npm start
```

---

## Build the Website

To create a production build:

```bash
cd website
npm run build
```

This checks whether the website can compile successfully.

If the build succeeds, Docusaurus creates a production build folder.

---

## Preview the Production Build

After running:

```bash
npm run build
```

preview the production version with:

```bash
npm run serve -- --host 0.0.0.0 --port 3000
```

Then open:

```text
http://localhost:3000/Linux-School/
```

---

## Website Build Script

Linux School also includes a helper script:

```text
tools/build-website.sh
```

Run it from the repo root:

```bash
bash tools/build-website.sh
```

This script creates or rebuilds the Docusaurus website foundation.

Use this script carefully because it may back up and recreate the `website/` folder depending on how it is written.

---

## Website Pages

Current important website pages:

| Page | Purpose |
|---|---|
| `website/src/pages/index.tsx` | Homepage |
| `website/docs/start-here.md` | Start guide |
| `website/docs/download-and-run.md` | Download and local run guide |
| `website/docs/cli-guide.md` | CLI usage guide |
| `website/docs/modules/index.md` | Module roadmap |
| `website/docs/modules/module-00.md` through `module-12.md` | Module landing pages |

---

## Website Styling

The main custom CSS file is:

```text
website/src/css/custom.css
```

Use this file to change:

- Colors
- Homepage layout
- Terminal-style sections
- Module cards
- Buttons
- Spacing
- Dark mode styling

---

## Docusaurus Config

The main config file is:

```text
website/docusaurus.config.ts
```

Important settings:

```text
title: Linux School
organizationName: m4ckDev
projectName: Linux-School
baseUrl: /Linux-School/
url: https://m4ckdev.github.io
```

The `baseUrl` matters because this site is intended for a GitHub Pages project site.

---

## Common Issue: Localhost Will Not Load

If this does not load:

```text
http://localhost:3000/Linux-School/
```

check these things:

1. Did you run `npm start`?
2. Is the terminal still open?
3. Did Docusaurus print a different URL?
4. Is another app already using port `3000`?
5. Are you inside the `website/` folder?

Check if port `3000` is listening:

```bash
ss -ltnp | grep 3000
```

If nothing appears, the website server is not running.

---

## Common Issue: Build Works but Website Does Not Open

A successful build does not mean the local website is running.

This command only builds the site:

```bash
npm run build
```

This command starts the local website:

```bash
npm start
```

For local preview, run `npm start`.

---

## Common Issue: Dependencies Missing

If you see missing package errors, run:

```bash
cd website
npm install
```

Then try again:

```bash
npm start
```

---

## Recommended Developer Workflow

Use this flow when editing the website:

```bash
cd website
npm start
```

Then edit files such as:

```text
website/src/pages/index.tsx
website/src/css/custom.css
website/docs/start-here.md
website/docs/download-and-run.md
website/docs/cli-guide.md
```

Docusaurus should reload the local site automatically when files change.

Before committing:

```bash
npm run build
```

Then return to the repo root:

```bash
cd ..
git status
git add website WEBSITE_BUILD.md
git commit -m "Update Linux School website"
git push origin main
```

---

## Suggested Future Website Improvements

Planned improvements:

- Add GitHub Pages deployment
- Add search
- Add better module detail pages
- Add screenshots or demo GIFs
- Add CLI install button
- Add copyable setup commands
- Add contributor guide
- Add versioned course releases
- Add downloadable ZIP button
- Add homepage module progress badges

---

## Quick Command Reference

Run local website:

```bash
cd website
npm start
```

Build website:

```bash
cd website
npm run build
```

Preview build:

```bash
cd website
npm run serve -- --host 0.0.0.0 --port 3000
```

Run CLI course:

```bash
bash tools/linux-school.sh
```

Open Module 04 overview from CLI:

```bash
bash tools/linux-school.sh open 04 overview
```

---

## Final Note

The website helps people understand the course.

The CLI helps people actually learn Linux.

The repo holds everything together.

```text
Website for browsing.
CLI for doing.
GitHub for source control.
```
