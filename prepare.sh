#!/bin/bash -e
#
# This script fetches LibreCAD source code and
# applies patches to it required for building of
# standalone dxf2pdf utility.
#
# Copyright (C) 2019 Alexander Pravdin <xanderdin@gmail.com>
#

DXF2PDF_DIR="./dxf2pdf"
LIBRECAD_DIR="./LibreCAD"
LIBRECAD_GIT="https://github.com/LibreCAD/LibreCAD.git"

if [ -d $LIBRECAD_DIR ]; then
    echo "Removing old $LIBRECAD_DIR"
    rm -rf $LIBRECAD_DIR
fi

echo "Getting LibreCAD srouces from $LIBRECAD_GIT"
git clone --depth 1 $LIBRECAD_GIT $LIBRECAD_DIR
#cp -a ./librecad.orig $LIBRECAD_DIR

pushd $LIBRECAD_DIR >/dev/null
echo "Switched into $LIBRECAD_DIR directory"

echo "Patching sources..."
find ../$(basename $DXF2PDF_DIR) -type f -name '*.patch' -print \
    | xargs -n 1 patch -u -t -p1 -i

popd >/dev/null
echo "Switched back from $LIBRECAD_DIR directory"

echo "Coping CMakeLists.txt files..."
for F in $(find $DXF2PDF_DIR -type f -name 'CMakeLists.txt' -print); do
    NF=$(echo $F | sed "s|^$DXF2PDF_DIR|$LIBRECAD_DIR|")
    echo "Copying $F -> $NF"
    cp -f $F $NF
done

echo
echo "Done."

cat << EOM

In order to build the binary you can do the following.

Create a directory for building, e.g build:

    mkdir build

Go to that directory and run cmake followed by make, e.g:

    cd build
    cmake ../$(basename $LIBRECAD_DIR)
    make

After successful building procedure, the binary and resource
files could be found inside the build/OUT directory.

EOM

