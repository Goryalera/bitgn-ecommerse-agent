#!/usr/bin/env python3
"""Check if the workspace paths exist on the filesystem."""
import subprocess
result = subprocess.run(["find", "/", "-maxdepth", "3", "-name", "AGENTS.MD", "-o", "-name", "basket-0081", "-o", "-name", "pay-0042"], capture_output=True, text=True, timeout=10)
print("STDOUT:", result.stdout)
print("STDERR:", result.stderr)
print("RC:", result.returncode)