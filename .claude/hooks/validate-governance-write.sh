#!/usr/bin/env bash
set -u

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"

if [ "${CONTINUUM_SIMULATE_MISSING_PYTHON:-0}" = "1" ] || ! command -v python3 >/dev/null 2>&1; then
  printf '%s\n' 'Blocked: python3 is required for Claude hook policy.' >&2
  exit 2
fi

PYTHONPATH="$SCRIPT_DIR/lib" exec python3 "$SCRIPT_DIR/lib/hook_common.py" validate-governance-write "$SCRIPT_DIR"
