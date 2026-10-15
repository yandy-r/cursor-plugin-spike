#!/bin/sh
# Inert unless the spike harness sets SPIKE_LAB to an existing directory.
cat >/dev/null
if [ -n "${SPIKE_LAB:-}" ] && [ -d "${SPIKE_LAB}" ]; then
  printf '%s pid=%s\n' "$(date -u +%Y-%m-%dT%H:%M:%SZ)" "$$" >> "${SPIKE_LAB}/hook.log"
fi
exit 0
