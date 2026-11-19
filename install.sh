#!/usr/bin/env bash
set -euo pipefail

usage='Usage: ./install.sh [--target-dir DIRECTORY]'
if [[ $# -eq 0 && -n ${HOME:-} ]]; then
  target_dir="$HOME/.agents/skills"
elif [[ $# -eq 2 && ${1:-} == --target-dir && -n ${2:-} ]]; then
  target_dir=$2
elif [[ $# -eq 1 && ( ${1:-} == --help || ${1:-} == -h ) ]]; then
  echo "$usage"
  exit 0
else
  echo "$usage" >&2
  exit 2
fi

skills_dir="$(CDPATH= cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)/skills"
mkdir -p -- "$target_dir"
target_dir="$(CDPATH= cd -- "$target_dir" && pwd -P)"

found=0
status=0
for source_dir in "$skills_dir"/*; do
  [[ -d "$source_dir" && -f "$source_dir/SKILL.md" ]] || continue
  found=1
  name="${source_dir##*/}"
  destination="$target_dir/$name"

  if [[ -L "$destination" && "$destination" -ef "$source_dir" ]]; then
    printf 'Already installed: %s\n' "$name"
  elif [[ -e "$destination" || -L "$destination" ]]; then
    printf 'Conflict (left unchanged): %s\n' "$destination" >&2
    status=1
  else
    ln -s -- "$source_dir" "$destination"
    printf 'Installed: %s\n' "$name"
  fi
done

if [[ $found -eq 0 ]]; then
  echo 'No skills containing SKILL.md were found.' >&2
  exit 1
fi
exit "$status"
