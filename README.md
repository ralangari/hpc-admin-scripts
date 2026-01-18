# HPC Admin Scripts

A small collection of practical Linux and HPC system administration scripts.
This repository focuses on daily operational visibility and Slurm job monitoring
using simple, safe, and transparent Bash scripts.

The scripts are designed for Linux and HPC system administrators who need
quick and reliable insight into system and cluster status.

--------------------------------------------------------------------

Included Scripts

1. System Monitoring

Path: system/sys_quick_status.sh

A read-only system monitoring script intended to be executed during
daily administrative checks.

It provides a concise snapshot of the system state, including:
- System uptime and load
- Logged-in users
- Recent login history
- Active user sessions
- Memory usage
- Disk usage
- Failed systemd services
- Recent system errors from the journal

Example:
./system/sys_quick_status.sh

--------------------------------------------------------------------

2. Slurm Job Statistics

Path: slurm/slurm_job_stats.sh

A Slurm monitoring script that reports high-level job activity and usage
information for cluster administrators.

Typical use cases:
- Counting running and completed jobs
- Reviewing job execution durations
- Getting a summary view of recent Slurm activity

The script relies on standard Slurm tools such as:
- sacct
- squeue
- sinfo

Example:
./slurm/slurm_job_stats.sh

--------------------------------------------------------------------

Design Principles
- Read-only by default
- No destructive operations
- Safe for production environments
- Minimal external dependencies
- Clear, human-readable output

--------------------------------------------------------------------

Requirements
- Linux operating system
- Bash shell
- Slurm workload manager (for Slurm-related scripts)
- Sufficient privileges to run monitoring commands

--------------------------------------------------------------------

Author
Riman Alangari

