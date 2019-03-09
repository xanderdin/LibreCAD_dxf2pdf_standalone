cmake_minimum_required(VERSION 3.5.0 FATAL_ERROR)
cmake_policy(SET CMP0048 NEW)

# Version of LibreCAD from which sources were taken.
# Don't change it here because it is to be substituted
# automatically by running prepare.sh script.
set(LC_VERSION "2.2.0-alpha")

project(dxf2pdf VERSION 0.1.0 LANGUAGES CXX)

# c++11 is obligatory for LibreCAD
message("We will be using CPP11 features")
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
#set(CMAKE_CXX_EXTENSIONS OFF)

# Destination directory for executable and resources
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/OUT")

# LibreCAD directories
set(LC_DIR "librecad")
set(LC_SRC "${LC_DIR}/src")

# LibreCAD sources for dxf2pdf
include("${LC_DIR}/CMakeLists.txt")

# If C99 emulation is needed, add the respective source files.
option(EMU_C99 "Emulate C99 math features" OFF)
if (EMU_C99)
    message("Emulating C99 math features")
    add_definitions(-DEMU_C99)
else()
    list(REMOVE_ITEM ${PROJECT_NAME}_SRCS
        ${LC_SRC}/main/emu_c99.h
        ${LC_SRC}/main/emu_c99.cpp
    )
endif()

# dxfrw library
add_subdirectory(libraries/libdxfrw)

# muparser library
find_library(MUPARSER_LIB muparser)
if (MUPARSER_LIB)
    message("Using external muparser")
else()
    message("Using bundled muparser")
    add_subdirectory(libraries/muparser)
endif()

# Boost library
find_package(Boost REQUIRED)

# Qt5 library
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
find_package(Qt5Core CONFIG REQUIRED)
find_package(Qt5PrintSupport CONFIG REQUIRED)

# Define LibreCAD version for substitution in sources
add_definitions(-DLC_VERSION=${LC_VERSION})

# Define LibreCAD directory for substitution in sources
if (APPLE OR WIN32)
    add_definitions(-DQC_APPDIR=LibreCAD)
else()
    add_definitions(-DQC_APPDIR=librecad)
endif()

# Target executable
add_executable(${PROJECT_NAME} ${${PROJECT_NAME}_SRCS})

target_include_directories(${PROJECT_NAME} PRIVATE
    ${LC_SRC}/lib/debug
    ${LC_SRC}/lib/engine
    ${LC_SRC}/lib/fileio
    ${LC_SRC}/lib/filters
    ${LC_SRC}/lib/gui
    ${LC_SRC}/lib/information
    ${LC_SRC}/lib/math
    ${LC_SRC}/lib/printing
    ${LC_SRC}/main
    ${LC_SRC}/main/console_dxf2pdf
    libraries/libdxfrw/src
    ${Boost_INCLUDE_DIRS}
)

target_link_libraries(${PROJECT_NAME}
    dxfrw
    muparser
    Qt5::Core
    Qt5::PrintSupport
    ${Boost_LIBRARIES}
)


# Resources source directory
set(RES_SRC_DIR "${CMAKE_SOURCE_DIR}/${LC_DIR}/support")
# Resources destination directory
set(RES_DST_DIR "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/resources")

# Command for add_custom_target COMMAND
set(CMD ${CMAKE_COMMAND})

# Copy resources to destination directory
add_custom_target(resources ALL VERBATIM
    COMMENT "Copying resources"
    COMMAND ${CMD} -E copy_directory ${RES_SRC_DIR}/fonts ${RES_DST_DIR}/fonts
    COMMAND ${CMD} -E copy_directory ${RES_SRC_DIR}/patterns ${RES_DST_DIR}/patterns
)

# Delete copied resources on make clean
set_property(DIRECTORY PROPERTY ADDITIONAL_MAKE_CLEAN_FILES
    "${RES_DST_DIR}"
)

