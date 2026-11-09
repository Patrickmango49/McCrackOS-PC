#!/usr/bin/env bash
set -euo pipefail

if [[ "${EUID}" -ne 0 ]]; then
  echo "This build uses Debian live-build and needs root privileges."
  echo "Run it on a Debian Trixie amd64 build environment with:"
  echo "  sudo ./scripts/build-local.sh"
  exit 1
fi

if ! command -v lb >/dev/null 2>&1; then
  echo "live-build is not installed. On Debian Trixie, install it with:"
  echo "  sudo apt update && sudo apt install live-build xorriso"
  exit 1
fi

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${ROOT_DIR}"

sh auto/config
lb build

echo
echo "Build finished. Look for live-image-amd64.hybrid.iso in the repository root."
