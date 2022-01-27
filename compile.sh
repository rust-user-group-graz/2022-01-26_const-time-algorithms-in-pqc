#!/bin/sh
set -e

# teardown
#rm -r build

# setup
mkdir -p build
cp -r src/* build
cp -r images/ build

# build
cd build
lualatex -halt-on-error -shell-escape --enable-write18 slides.tex
cd ..

# finalize
mv build/slides.pdf slides.pdf

