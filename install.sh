#!/usr/bin/env bash
set -euo pipefail

target="${1:-$HOME/.codex/skills}"
script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source_dir="$script_dir/.codex/skills"

if [[ ! -d "$source_dir" ]]; then
  echo "Skills source folder not found: $source_dir" >&2
  exit 1
fi

mkdir -p "$target"

for skill_dir in "$source_dir"/*; do
  [[ -d "$skill_dir" ]] || continue
  skill_name="$(basename "$skill_dir")"
  destination="$target/$skill_name"
  rm -rf "$destination"
  cp -R "$skill_dir" "$destination"
  echo "Installed skill: $skill_name"
done

echo "Done. Skills installed to: $target"

