#!/usr/bin/env bash
set -euo pipefail

usage='Usage: ./uninstall.sh [--target-dir DIRECTORY]'
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
if [[ ! -d "$target_dir" ]]; then
  echo 'No Looma links found.'
  exit 0
fi
target_dir="$(CDPATH= cd -- "$target_dir" && pwd -P)"

removed=0
for link in "$target_dir"/*; do
  [[ -L "$link" ]] || continue
  name="${link##*/}"
  source_dir="$skills_dir/$name"
  if [[ $(readlink "$link") == "$source_dir" || ( -d "$source_dir" && "$link" -ef "$source_dir" ) ]]; then
    rm -- "$link"
    printf 'Removed: %s\n' "$name"
    removed=1
  fi
done
if [[ $removed -eq 0 ]]; then
  echo 'No Looma links found.'
fi
