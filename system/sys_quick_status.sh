#!/bin/bash
# ============================================================
# System Quick Status
# Author: Riman Alangari
# Description: Read-only system health snapshot for Linux/HPC
# ============================================================

echo "============================================================"
echo " System Quick Status - $(hostname)"
echo " Date: $(date)"
echo "============================================================"
echo

echo "---- UPTIME & LOAD -----------------------------------------"
uptime
echo

echo "---- LOGGED-IN USERS ---------------------------------------"
who
echo

echo "---- LAST 20 LOGINS ----------------------------------------"
last -n 20
echo

echo "---- ACTIVE SESSIONS (w) -----------------------------------"
w
echo

echo "---- MEMORY STATUS -----------------------------------------"
free -h
echo

echo "---- DISK USAGE --------------------------------------------"
df -h
echo

echo "---- FAILED SYSTEMD SERVICES -------------------------------"
systemctl --failed --no-pager
echo

echo "---- RECENT SYSTEM ERRORS (last 20) ------------------------"
journalctl -p err -n 20 --no-pager
echo

