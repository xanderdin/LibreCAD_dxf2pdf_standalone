cmake_minimum_required(VERSION 3.5.0 FATAL_ERROR)

project(muparser CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
#set(CMAKE_CXX_EXTENSIONS OFF)

set(SRCS
    include/muParserTokenReader.h
    include/muParserToken.h
    include/muParserStack.h
    include/muParserFixes.h
    include/muParserError.h
    include/muParserDef.h
    include/muParserCallback.h
    include/muParserBytecode.h
    include/muParserBase.h
    include/muParser.h
    include/muParserTemplateMagic.h
    src/muParserTokenReader.cpp
    src/muParserError.cpp
    src/muParserCallback.cpp
    src/muParserBytecode.cpp
    src/muParserBase.cpp
    src/muParser.cpp
)

add_library(${PROJECT_NAME} ${SRCS})

target_include_directories(${PROJECT_NAME} PUBLIC include)
