#!/usr/bin/env bash
# Quick check for workspace data
echo "=== Checking for workspace directories ==="
ls -la /c/Users/MSI/Desktop/ecom-agent-main/agent/ 2>/dev/null
echo "---"
ls -la /proc/catalog 2>/dev/null || echo "no /proc/catalog"
ls -la /c/proc/catalog 2>/dev/null || echo "no /c/proc/catalog"
ls -la /mnt/proc/catalog 2>/dev/null || echo "no /mnt/proc/catalog"