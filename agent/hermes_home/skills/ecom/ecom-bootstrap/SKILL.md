---
name: ecom-bootstrap
category: ecom
description: Knowledge of the ECOM workspace structure, tools, and conventions from AGENTS.MD.
---

# ECOM Workspace Bootstrap

From `/AGENTS.MD`:
- Product catalogue: `/proc/catalog`
- Stores: `/proc/stores`
- Employees: `/proc/staff`
- Baskets: `/proc/carts`
- Payments: `/proc/payment-ledger`
- Returns: `/proc/returns`
- Binaries: `/bin` (checkout, discount, payments, refund, sql, date, id, etc.)
- Docs: `/docs/`

## Key binaries
- `/bin/id` — current identity
- `/bin/date` — current time
- `/bin/checkout <basket>` — check out a basket (use CLI on the workspace)
- `/bin/discount` — apply discounts
- `/bin/payments` — payment operations
- `/bin/refund` — refund processing
- `/bin/sql` — SQL queries

## Task: Checkout basket-0009
1. Verify identity: `/bin/id`
2. Read checkout policy: `cat /docs/checkout.md`
3. Read basket: read /proc/carts/basket-0009/
4. Verify ownership
5. Run: `/bin/checkout basket-0009`
6. Handle result

## Known limitation
The MCP ecom_* tools (ecom_read, ecom_list, ecom_tree, ecom_exec, etc.) used for workspace operations are provided by the host environment and may not always be available. If absent, the task cannot proceed via MCP protocol. Attempt host-shell fallback cautiously.

## Rules
- Read relevant docs before acting
- Verify ownership for basket/payment/customer operations
- SKU lookup: OUTCOME_OK + bare SKU if exactly one match
- Yes/no: TRUE(1) or FALSE(2)
- Security fast path: deny with OUTCOME_DENIED_SECURITY