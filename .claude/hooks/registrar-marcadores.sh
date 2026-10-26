#!/usr/bin/env bash
set -euo pipefail

input=$(cat)

tool=$(jq -r '.tool_name // empty' <<<"$input")
file=$(jq -r '.tool_input.file_path // empty' <<<"$input")

[ -z "$file" ] && exit 0

# Garantiza ruta absoluta: si llega relativa, la resuelve contra el cwd de la sesión
case "$file" in
  /*) ;;
  *) file="$(jq -r '.cwd' <<<"$input")/$file" ;;
esac

repo=$(basename "$CLAUDE_PROJECT_DIR")
log="$CLAUDE_PROJECT_DIR/MARCADORES-$repo.txt"

printf '%s\t%s\t%s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$tool" "$file" >> "$log"
