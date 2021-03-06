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

mkdir -p build && cd build
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release ../src
make

VISOR=zathura

if hash ${VISOR} 2>/dev/null; then
  ${VISOR} doc/doc_dune-webinar_tex_source.pdf
else
  echo "No está instalado el visor ${VISOR}."
fi
