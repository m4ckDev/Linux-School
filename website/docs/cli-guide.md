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
