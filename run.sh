#!/usr/bin/bash
# ------------------------------------------------------------------
# Oromion Generate the pdf (LaTeX).
#          Description
# ------------------------------------------------------------------
VERSION=0.1.0
USAGE="Usage: run.sh"
# --- Options processing -------------------------------------------
# [ $# -eq 0 ] && { echo "Usage: $0 filename"; exit 1; }
set -e -u
echo "Bash version: $BASH_VERSION"
# _number="$1"
DIR=$(pwd)/build
if [ -d "$DIR" ]; then
  printf '%s\n' "Removing Lock ($DIR)"
  rm -rf "$DIR"
fi

cmake \
  -S src \
  -B build \
  -DCMAKE_BUILD_TYPE=Release \
  -G "Unix Makefiles" \
  -Wno-dev

cmake --build build

VISOR=zathura

if hash ${VISOR} 2>/dev/null; then
  ${VISOR} build/doc/doc_dune-webinar_tex_source.pdf &
else
  echo "No está instalado el visor ${VISOR}."
fi
