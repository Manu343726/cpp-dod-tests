cmake_minimum_required(VERSION 3.0)
project(joaquin_dod)

include(cmake/utils.cmake)

option(GENERATE_ASSEMBLY "Generate assembly listings instead of executable" OFF)
if(NOT CPU_MODEL)
    message(FATAL_ERROR "You must specify your CPU model. We are still working on a portable command to handle this automatically. Thanks!")
endif()
string(REGEX REPLACE " " "-" CPU_MODEL "${CPU_MODEL}")

compiler_version(CXX_COMPILER_VERSION)
environment(ENVIRONMENT)
set(OUTPUT_PATH "${CMAKE_CURRENT_SOURCE_DIR}/results/${CPU_MODEL}/${CMAKE_SYSTEM}/${ENVIRONMENT}-${CMAKE_CXX_COMPILER_ID}-${CXX_COMPILER_VERSION}")
set_output_directory(${OUTPUT_PATH})


if(NOT (EXISTS OUTPUT_PATH))
    file(MAKE_DIRECTORY ${OUTPUT_PATH})
endif()
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${OUTPUT_PATH})

set(SOURCE_NAME dod_perf)
set(SOURCE_FILES ${SOURCE_NAME}.cpp)
add_executable(${CMAKE_PROJECT_NAME} ${SOURCE_FILES})


# Compiler flags
if(MSVC)
    # SSE2 flag ignored on 64 bit builds, its enabled by default.
    # See http://stackoverflow.com/questions/1067630/sse2-option-in-visual-c-x64
    set(SIMD_FLAGS /arch:sse2)

    # Omit frame pointer, enable intrinsic functions
    set(OPT_FLAGS /Oy /Oi)

    if(GENERATE_ASSEMBLY)
        set(ASMGEN_FLAGS "/Fa${OUTPUT_PATH}/${SOURCE_NAME}.asm" /FA)
    endif()
else()
    set(STD_FLAGS -std=c++11)
    set(SIMD_FLAGS -ftree-vectorize -msse2)
    set(OPT_FLAGS -O3 -g0 -fomit-frame-pointer) # Frame pointer out not bcos performance but to clear listings a bit

    if(GENERATE_ASSEMBLY)
        add_custom_command(TARGET ${CMAKE_PROJECT_NAME}
                           POST_BUILD
                           COMMAND make ARGS ${SOURCE_NAME}.s
                           COMMAND ${CMAKE_COMMAND} -E copy
                               "${CMAKE_BINARY_DIR}/CMakeFiles/${CMAKE_PROJECT_NAME}.dir/${SOURCE_NAME}.cpp.s"
                               "${OUTPUT_PATH}/${SOURCE_NAME}.s"
                           WORKING_DIRECTORY ${CMAKE_BINARY_DIR})
    endif()
endif()

target_compile_options(${CMAKE_PROJECT_NAME} PRIVATE ${STD_FLAGS} ${OPT_FLAGS} ${SIMD_FLAGS} ${ASMGEN_FLAGS})

# External dependencies (Boost, etc)
if(WIN32)
    set(INCLUDE_DIRS C:/MinGW/include)
elseif(CYGWIN)
    set(INCLUDE_DIRS /cygdrive/c/MinGW/include)
elseif(UNIX)
    set(INCLUDE_DIRS usr/local/include)
endif()

target_include_directories(${CMAKE_PROJECT_NAME} PRIVATE ${INCLUDE_DIRS})

if(WIN32)
    add_custom_target(run COMMAND ${CMAKE_PROJECT_NAME}.exe >> output.txt
                      WORKING_DIRECTORY ${OUTPUT_PATH})
else()
    add_custom_target(run COMMAND ./${CMAKE_PROJECT_NAME} | tee output.txt
                      WORKING_DIRECTORY ${OUTPUT_PATH})
endif()
