#!/usr/bin/env bash
set -euo pipefail

cd -- "$(dirname -- "$0")"

jar="paper-26.3-253.jar"
if [[ ! -f "$jar" ]]; then
    printf 'Paper jar not found. Run ./download-paper.sh first.\n' >&2
    exit 1
fi

if [[ ! -f eula.txt ]] || ! grep -Eq '^[[:space:]]*eula=true[[:space:]]*$' eula.txt; then
    printf 'Read the Minecraft EULA, then create eula.txt containing eula=true to start the server.\n' >&2
    exit 1
fi

exec java -Xms1G -Xmx2G -jar "$jar" --nogui
