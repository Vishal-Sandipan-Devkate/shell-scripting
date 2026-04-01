# Shell Scripting Practice Repository

This repository contains Bash scripting practice files and a small DevOps-style automation project.

## Repository Layout

- `bg-scripts-folder/`: beginner-to-intermediate shell scripting exercises
- `devops-project/`: command-driven mini project for deploy, monitor, and backup workflows
- `con-ss-uslinux/renaming.md`: note file (currently empty)

## Prerequisites

- Linux/macOS shell with Bash
- Common CLI tools used by scripts: `tar`, `top`, `free`, `df`, `awk`, `sed`, `uptime`

Check Bash:

```bash
bash --version
```

## Learning Scripts (`bg-scripts-folder`)

### Script List

- `first.sh`: basic variables and output
- `taking-inputs.sh`: interactive input (`read`)
- `command-line-args.sh`: prints first two positional arguments
- `special-var-cmd.sh`: demonstrates `$0`, `$#`, `$@`
- `requirement.sh`: validates argument presence
- `hello-fun.sh`: simple function example
- `first-task.sh`: combines argument + interactive age check
- `real-devops-ex.sh`: simple required-argument deployment message
- `sam-prod.sh`: environment-based deployment branching (`prod`, `dev`, `test`)
- `sy-monitor.sh`: basic system monitoring output
- `ad-sy-monitor.sh`: threshold-based system usage warnings
- `backup.sh`: tar backup with retention of latest 5 files
- `profe-backup.sh`: modular backup with logging and retention

### Run Examples

```bash
cd /home/vishaldevkate/Desktop/learnigs

bash bg-scripts-folder/first.sh
bash bg-scripts-folder/taking-inputs.sh
bash bg-scripts-folder/command-line-args.sh one two
bash bg-scripts-folder/special-var-cmd.sh alpha beta gamma
bash bg-scripts-folder/requirement.sh Vishal
bash bg-scripts-folder/sam-prod.sh payment-service prod
bash bg-scripts-folder/ad-sy-monitor.sh
```

### Backup Script Notes

Both backup scripts use hardcoded paths:

- `SOURCE="/home/vishaldevkate/Documents"`
- `DEST="/home/vishaldevkate/backup"`

Run:

```bash
bash bg-scripts-folder/backup.sh
bash bg-scripts-folder/profe-backup.sh
```

## DevOps Mini Project (`devops-project`)

### Files

- `config.env`: shared config (app name, backup/data/log paths, environment)
- `devops.sh`: command router entrypoint
- `scripts/deploy.sh`: environment-based deployment handler
- `scripts/monitor.sh`: CPU/memory/disk status
- `scripts/backup.sh`: archive backup from configured source dir
- `scripts/utils.sh`: shared `log` and `error_exit` helpers

### Run Project Commands

```bash
cd /home/vishaldevkate/Desktop/learnigs/devops-project

bash devops.sh deploy dev
bash devops.sh deploy prod
bash devops.sh monitor
bash devops.sh backup
```

## Current Caveats

- Some scripts are intentionally simple and designed for learning.
- In `bg-scripts-folder`, backups keep only the latest 5 files.
- In `devops-project`, paths in `config.env` are relative to `devops-project`.

## Improvement Ideas

- Parameterize source and destination in backup scripts.
- Add `--help` usage messages to every script.
- Standardize strict mode (`set -euo pipefail`) where appropriate.
- Add `shellcheck` and simple automated checks (for example, using `bats`).
