# Shell Scripting Practice Repository

This folder contains beginner-to-intermediate Bash scripts for learning shell fundamentals, argument handling, user input, simple automation, monitoring, and backup workflows.

## Folder Structure

- `first.sh` - basic variables and output
- `taking-inputs.sh` - reads user input from terminal
- `command-line-args.sh` - prints positional arguments
- `special-var-cmd.sh` - demonstrates special shell variables (`$0`, `$#`, `$@`)
- `requirement.sh` - validates required command-line input
- `hello-fun.sh` - defines and calls a simple function
- `first-task.sh` - combines positional args and interactive input with age check
- `real-devops-ex.sh` - simple deployment-style argument usage
- `sam-prod.sh` - environment-based deployment branching (`prod`, `dev`, `test`)
- `sy-monitor.sh` - basic system monitoring output (CPU, memory, disk)
- `ad-sy-monitor.sh` - threshold-based monitoring warnings
- `backup.sh` - tar.gz backup creation with retention of latest 5 files
- `profe-backup.sh` - stricter modular backup script with logging and retention
- `con-ss-uslinux/renaming.md` - currently empty placeholder note

## Prerequisites

- Linux or macOS terminal with Bash
- Standard Unix utilities used across scripts:
  - `tar`
  - `top`
  - `free`
  - `df`
  - `awk`
  - `sed`

Check Bash version:

```bash
bash --version
```

## How To Run

From this folder:

```bash
cd /home/vishaldevkate/Desktop/learnigs
```

Run any script with Bash:

```bash
bash first.sh
bash taking-inputs.sh
bash command-line-args.sh Vishal DevOps
```

Optional: make scripts executable once, then run directly.

```bash
chmod +x *.sh
./sam-prod.sh my-app prod
```

## Script Examples

### Input and Arguments

```bash
bash taking-inputs.sh
bash command-line-args.sh one two
bash special-var-cmd.sh alpha beta gamma
bash requirement.sh Vishal
```

### Deployment-style Scripts

```bash
bash real-devops-ex.sh vishal
bash sam-prod.sh payment-service prod
bash sam-prod.sh payment-service dev
```

### Monitoring Scripts

```bash
bash sy-monitor.sh
bash ad-sy-monitor.sh
```

### Backup Scripts

Both backup scripts currently use hardcoded paths:

- `SOURCE="/home/vishaldevkate/Documents"`
- `DEST="/home/vishaldevkate/backup"`

Run:

```bash
bash backup.sh
bash profe-backup.sh
```

## Notes and Safety

- Some scripts are learning exercises and intentionally simple.
- Backup scripts remove older backup files to keep only the latest 5 archives.
- Review hardcoded paths before running backup scripts on another system.
- For production usage, prefer parameterized paths and dry-run support.

## Suggested Improvements

- Accept `SOURCE` and `DEST` as command-line parameters.
- Add `--help` and usage output to all scripts.
- Add consistent error handling (`set -euo pipefail`) where appropriate.
- Add shell linting with `shellcheck`.
- Add simple automated tests (for argument-validation scripts) using `bats`.
