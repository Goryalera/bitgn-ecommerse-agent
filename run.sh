#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
AGENT_DIR="$ROOT/agent"

if [[ -z "${VIRTUAL_ENV:-}" ]]; then
  for cand in "$ROOT/venv/bin/activate" "$ROOT/.venv/bin/activate"; do
    if [[ -f "$cand" ]]; then
      source "$cand"
      break
    fi
  done
fi

PY="${PYTHON:-python}"

if [[ ! -f "$ROOT/.env" ]]; then
  echo "WARNING: $ROOT/.env not found. Copy .env.example to .env and fill it in." >&2
fi

if ! command -v hermes >/dev/null 2>&1 && [[ -z "${HERMES_BIN:-}" ]]; then
  echo "FATAL: 'hermes' is not on PATH. Install it with 'pip install hermes-agent'" >&2
  echo "       into the same environment as $PY, or set HERMES_BIN in .env." >&2
  exit 1
fi

echo "BENCH_ID=${BENCH_ID:-<from .env>}  MODEL_ID=${MODEL_ID:-<default>}  WORKERS=${WORKERS:-4}"

cd "$AGENT_DIR"
exec "$PY" -m main "$@"
