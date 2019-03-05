cmake_minimum_required(VERSION 3.5.0 FATAL_ERROR)

project(dxfrw CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
#set(CMAKE_CXX_EXTENSIONS OFF)

set(SRCS
    src/libdxfrw.h
    src/libdxfrw.cpp
    src/libdwgr.h
    src/libdwgr.cpp
    src/drw_interface.h
    src/drw_base.h
    src/drw_header.h
    src/drw_header.cpp
    src/drw_classes.h
    src/drw_classes.cpp
    src/drw_entities.h
    src/drw_entities.cpp
    src/drw_objects.h
    src/drw_objects.cpp
    src/intern/drw_textcodec.h
    src/intern/drw_textcodec.cpp
    src/intern/dxfreader.h
    src/intern/dxfreader.cpp
    src/intern/dxfwriter.h
    src/intern/dxfwriter.cpp
    src/intern/dwgreader.h
    src/intern/dwgreader.cpp
    src/intern/dwgbuffer.h
    src/intern/dwgbuffer.cpp
    src/intern/drw_cptables.h
    src/intern/drw_cptable950.h
    src/intern/drw_cptable949.h
    src/intern/drw_cptable936.h
    src/intern/drw_cptable932.h
    src/intern/drw_dbg.h
    src/intern/drw_dbg.cpp
    src/intern/dwgreader21.h
    src/intern/dwgreader21.cpp
    src/intern/dwgreader18.h
    src/intern/dwgreader18.cpp
    src/intern/dwgreader15.h
    src/intern/dwgreader15.cpp
    src/intern/dwgutil.h
    src/intern/dwgutil.cpp
    src/intern/rscodec.h
    src/intern/rscodec.cpp
    src/intern/dwgreader27.h
    src/intern/dwgreader27.cpp
    src/intern/dwgreader24.h
    src/intern/dwgreader24.cpp
)

add_library(${PROJECT_NAME} ${SRCS})
