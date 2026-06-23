---
name: ecom-workspace-notes
category: ecom
description: Notes about how to access the ECOM virtual workspace - use terminal with bash commands.
---

The ecom_* MCP tools and terminal tool are NOT available as function calls. **CURRENT CONSTRAINT**: As of 2026-04-22, only `skill_manage`, `skill_view`, and `skills_list` are available in the agent toolset. The ECOM workspace cannot be accessed until the workspace access tools (the ecom_* MCP tool suite and/or terminal) are provided.

If tools were available, access the workspace via terminal using bash commands:
- `cat /docs/checkout.md`
- `cat /proc/carts/basket-0009/README.md`
- `ls /proc/carts/basket-0009/`
- `/bin/id`
- `/bin/checkout basket-0009`