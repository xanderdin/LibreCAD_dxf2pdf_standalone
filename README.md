# LibreCAD dxf2pdf standalone

[![Build Status](https://travis-ci.com/xanderdin/LibreCAD_dxf2pdf_standalone.svg?branch=master)](https://travis-ci.com/xanderdin/LibreCAD_dxf2pdf_standalone)

This project is a set of patches to [LibreCAD][librecad] source code for making
[dxf2pdf][dxf2pdf] tool to be a standalone executable that does not require a
running *X* server for its functioning (*X* libraries still must be present
though).


## Why

[LibreCAD][librecad] contains [dxf2pdf][dxf2pdf] tool which allows conversion
of *DXF* files to *PDF* files from command line (console). That tool is a part
of *LibreCAD* binary. As far as *LibreCAD* is a GUI application, running it in
console mode still requires a running *X* server. This is not convenient if you
want to run *dxf2pdf* on a remote server or in a [Docker][docker] container.
The goal of this project is to eliminate such a running *X* server dependency.
The patches contain only minimum required changes of *LibreCAD* code for making
*dxf2pdf* a standalone binary that does not require a running *X* server.


## How to build

*Note: this project uses [CMake][cmake] for building.*

First, run `prepare.sh` script:

```sh
./prepare.sh
```

The script will download *LibreCAD* sources, apply patches and copy
*CMakeLists.txt* files to required places inside *LibreCAD* directory structure.

After that, create a directory for building (e.g.: build), `cd` to it and
run `cmake` specifying the path to prepared *LibreCAD* directory. Then run
`make`.

```sh
mkdir build
cd build
cmake ../LibreCAD
make
```

The resulting binary and required resources will be placed into *OUT* directory
inside that building directory (e.g.: build/OUT).

[librecad]: https://github.com/LibreCAD/LibreCAD/
[dxf2pdf]: https://github.com/LibreCAD/LibreCAD/pull/1023/
[cmake]: https://cmake.org/
[docker]: https://www.docker.com/
