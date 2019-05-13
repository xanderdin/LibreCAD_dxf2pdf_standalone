#!/bin/bash -e
#
# This script fetches LibreCAD source code and
# applies patches to it required for building of
# standalone dxf2pdf utility.
#
# Copyright (C) 2019 Alexander Pravdin <xanderdin@gmail.com>
#

# Directory with patches and CMakeLists.txt files
DXF2PDF_DIR="./dxf2pdf"

# Directory, where to clone LibreCAD git repository
LIBRECAD_DIR="./LibreCAD"

# LibreCAD git repository to be cloned
LIBRECAD_GIT="https://github.com/LibreCAD/LibreCAD.git"

# Specific LibreCAD commit to use as a base for dxf2pdf build
LIBRECAD_COMMIT="664464a5fcd6718b51061006e61919063583f995"

# If provided, the first argument to this script
# will override the commit hash set above.
LIBRECAD_COMMIT=${1:-$LIBRECAD_COMMIT}

# Cleanup
if [ -d $LIBRECAD_DIR ]; then
    echo "Removing old $LIBRECAD_DIR"
    rm -rf $LIBRECAD_DIR
fi

echo "Getting LibreCAD sources from $LIBRECAD_GIT"
git clone $LIBRECAD_GIT $LIBRECAD_DIR

pushd $LIBRECAD_DIR >/dev/null
echo "Switched into $LIBRECAD_DIR directory"

echo "Using $LIBRECAD_COMMIT as a base for building"
git checkout -b "build_based_on_$LIBRECAD_COMMIT" "$LIBRECAD_COMMIT"

LIBRECAD_VER=$(git describe --tags)

echo "Patching sources..."
find ../$(basename $DXF2PDF_DIR) -type f -name '*.patch' -print \
    | xargs -n 1 patch -u -t -p1 -i

popd >/dev/null
echo "Switched back from $LIBRECAD_DIR directory"

echo "Copying CMakeLists.txt files..."
for F in $(find $DXF2PDF_DIR -type f -name 'CMakeLists.txt' -print); do
    NF=$(echo $F | sed "s|^$DXF2PDF_DIR|$LIBRECAD_DIR|")
    echo "Copying $F -> $NF"
    cp -f $F $NF
done

echo "Setting LibreCAD version to $LIBRECAD_VER"
sed -i "s|2.2.0-alpha|$LIBRECAD_VER|" $LIBRECAD_DIR/CMakeLists.txt

echo "Done."

cat << EOM

In order to build the binary just do the following.

Create a directory for building, e.g build:

    mkdir build

Go to that directory and run cmake followed by make, e.g:

    cd build
    cmake ../$(basename $LIBRECAD_DIR)
    make

After successful building procedure, the binary and resource
files could be found inside the build/OUT directory.

EOM

