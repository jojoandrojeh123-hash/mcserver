#!/usr/bin/env bash
set -euo pipefail

cd -- "$(dirname -- "$0")"

url="https://fill-data.papermc.io/v1/objects/f9df8e19f4bdee97dbded48095391ea69c64342a4e19624db4f5e0d0136dfe0b/paper-26.3-253.jar"
sha256="f9df8e19f4bdee97dbded48095391ea69c64342a4e19624db4f5e0d0136dfe0b"
jar="paper-26.3-253.jar"
tmp="$(mktemp "${jar}.XXXXXX")"
trap 'rm -f -- "$tmp"' EXIT

curl --fail --location --retry 3 "$url" --output "$tmp"
printf '%s  %s\n' "$sha256" "$tmp" | sha256sum --check
mv -- "$tmp" "$jar"
