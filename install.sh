#!/usr/bin/env bash
set -euo pipefail

read -rp "Enter the target directory (e.g. /home/user/tank-royale): " target_dir

if [[ -z "$target_dir" ]]; then
    echo "Error: No directory specified. Aborting." >&2
    exit 1
fi

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source_dir="$script_dir/sounds"
dest_dir="$target_dir/sounds"

if [[ ! -d "$source_dir" ]]; then
    echo "Error: Source directory not found: $source_dir" >&2
    exit 1
fi

if [[ ! -d "$target_dir" ]]; then
    echo "Error: Target directory does not exist: $target_dir" >&2
    exit 1
fi

echo "Copying sounds to: $dest_dir"
mkdir -p "$dest_dir"
cp -r "$source_dir/." "$dest_dir/"
echo "Done."
