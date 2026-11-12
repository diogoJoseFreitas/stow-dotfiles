#!/usr/bin/env bash
set -euo pipefail

MONITOR="${1:-eDP-1}"
ROTATION_FILE="$HOME/.config/umbriel/rotation.toml"
PID_FILE="${XDG_RUNTIME_DIR:-/tmp}/iio-umbriel.pid"

# Encerra instância anterior (e seus filhos), se existir
if [[ -f "$PID_FILE" ]]; then
    old_pid=$(cat "$PID_FILE" 2>/dev/null || true)
    if [[ -n "$old_pid" && "$old_pid" != "$$" ]] && kill -0 "$old_pid" 2>/dev/null; then
        pkill -P "$old_pid" 2>/dev/null || true
        kill "$old_pid" 2>/dev/null || true
    fi
fi
echo "$$" > "$PID_FILE"
trap 'pkill -P $$ 2>/dev/null || true' EXIT INT TERM

current_transform=""

apply_orientation() {
    local orient="$1"
    local transform=""

    case "$orient" in
        normal)    transform="normal" ;;
        left-up)   transform="90" ;;
        bottom-up) transform="180" ;;
        right-up)  transform="270" ;;
        *)         return ;;
    esac

    if [[ "$transform" != "$current_transform" ]]; then
        current_transform="$transform"
        printf '[output.%s]\ntransform = "%s"\n' "$MONITOR" "$transform" > "$ROTATION_FILE"
        umbriel msg config-reload >/dev/null 2>&1 || true
    fi
}

while IFS= read -r line; do
    if [[ "$line" =~ orientation:\ ([a-z-]+) ]]; then
        apply_orientation "${BASH_REMATCH[1]}"
    elif [[ "$line" =~ Accelerometer\ orientation\ changed:\ ([a-z-]+) ]]; then
        apply_orientation "${BASH_REMATCH[1]}"
    fi
done < <(exec stdbuf -oL monitor-sensor --accel 2>/dev/null)
