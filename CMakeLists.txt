cmake_minimum_required(VERSION 3.0)
project(joaquin_dod)

include(cmake/utils.cmake)

option(GENERATE_ASSEMBLY "Generate assembly listings instead of executable" OFF)
if(NOT CPU_MODEL)
    message(FATAL_ERROR "You must specify your CPU model. We are still working on a portable command to handle this automatically. Thanks!")
endif()
string(REGEX REPLACE " " "-" CPU_MODEL "${CPU_MODEL}")

# Fallback to Release build by default
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif()

compiler_version(CXX_COMPILER_VERSION)
environment(ENVIRONMENT)
set(OUTPUT_PATH "${CMAKE_CURRENT_SOURCE_DIR}/results/${CPU_MODEL}/${CMAKE_SYSTEM}/${ENVIRONMENT}-${CMAKE_CXX_COMPILER_ID}-${CXX_COMPILER_VERSION}/${CMAKE_BUILD_TYPE}")
set_output_directory(${OUTPUT_PATH})


if(NOT (EXISTS OUTPUT_PATH))
    file(MAKE_DIRECTORY ${OUTPUT_PATH})
endif()
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${OUTPUT_PATH})

set(SOURCE_NAME dod_perf)
set(SOURCE_FILES ${SOURCE_NAME}.cpp)

# See unique-config emulation trick bellow
if(MSVC)
    add_executable(${CMAKE_PROJECT_NAME} EXCLUDE_FROM_ALL ${SOURCE_FILES})
else()
    add_executable(${CMAKE_PROJECT_NAME} ${SOURCE_FILES})
endif()

if(MSVC)
    set(assembly_listing_file ${SOURCE_NAME}.asm)
else()
    set(assembly_listing_file ${SOURCE_NAME}.s)
endif()

# Compiler flags
if(MSVC)
    # SSE2 flag ignored on 64 bit builds, it's enabled by default.
    # See http://stackoverflow.com/questions/1067630/sse2-option-in-visual-c-x64
    set(SIMD_FLAGS $<$<CONFIG:Release>:/arch:sse2>)

    # Omit frame pointer, enable intrinsic functions
    set(OPT_FLAGS $<$<CONFIG:Release>:/Oy /Oi>)

    if(GENERATE_ASSEMBLY)
        set(ASMGEN_FLAGS "/Fa${OUTPUT_PATH}/${assembly_listing_file}" /FA)
    endif()
else()
    set(STD_FLAGS -std=c++11)
    set(SIMD_FLAGS $<$<CONFIG:Release>:-ftree-vectorize -msse2>)
    set(OPT_FLAGS $<$<CONFIG:Release>:-O3 -g0 -fomit-frame-pointer>) # Frame pointer out not bcos performance but to clear listings a bit

    if(GENERATE_ASSEMBLY)
        add_custom_command(TARGET ${CMAKE_PROJECT_NAME}
                           POST_BUILD
                           COMMAND make ARGS ${SOURCE_NAME}.s
                           COMMAND ${CMAKE_COMMAND} -E copy
                               "${CMAKE_BINARY_DIR}/CMakeFiles/${CMAKE_PROJECT_NAME}.dir/${SOURCE_NAME}.cpp.s"
                               "${OUTPUT_PATH}/${assembly_listing_file}"
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

# Workaround to make VS behave like unique-configuration generator:
if(WIN32 AND MSVC)
    set_target_properties(${CMANE_PROJECT_NAME}
                          PROPERTIES EXCLUDE_FROM_ALL 1 EXCLUDE_FROM_DEFAULT_BUILD 1)

    # Build target using CMAKE_BUILD_TYPE always, as unique-configuration makefiles
    add_custom_target(build_msvc ALL
                      COMMAND ${CMAKE_COMMAND} --build \".\" --target ${CMAKE_PROJECT_NAME} --config ${CMAKE_BUILD_TYPE}
                      WORKING_DIRECTORY ${CMAKE_BINARY_DIR})
endif()

set(run_status_message ">>>> Running ${CMAKE_PROJECT_NAME} on '${CPU_MODEL}', ${CMAKE_SYSTEM}-${ENVIRONMENT}-${CMAKE_CXX_COMPILER_ID}-${CXX_COMPILER_VERSION} (${CMAKE_BUILD_TYPE})")
set(run_finished_message ">>>> Finished. Results in 'output.txt' file at ${OUTPUT_PATH}")
if(WIN32)
    add_custom_target(run
                      COMMAND ${CMAKE_COMMAND} -E echo "${run_status_message}"
                      COMMAND ${CMAKE_PROJECT_NAME}.exe >> output.txt
                      COMMAND ${CMAKE_COMMAND} -E echo "${run_finished_message}"
                      WORKING_DIRECTORY ${OUTPUT_PATH})
else()
    add_custom_target(run
                      COMMAND ${CMAKE_COMMAND} -E echo "${run_status_message}"
                      COMMAND ./${CMAKE_PROJECT_NAME} | tee output.txt
                      COMMAND ${CMAKE_COMMAND} -E echo "Finished. Results in 'output.txt' file at ${OUTPUT_PATH}"
                      WORKING_DIRECTORY ${OUTPUT_PATH})
endif()

# Custom target to do all the work with a simple command:
add_custom_target(run_all COMMAND ${CMAKE_COMMAND} -E echo \">>>> Running all variants\" WORKING_DIRECTORY ${CMAKE_BINARY_DIR})

set(common_flags "-DGENERATE_ASSEMBLY=${GENERATE_ASSEMBLY} -DCPU_MODEL=\"${CPU_MODEL}\"")

if(WIN32)
    list(APPEND VARIANTS "-G \"Visual Studio 14\" -DCMAKE_BUILD_TYPE=Release")
    list(APPEND VARIANTS "-G \"Visual Studio 14\" -DCMAKE_BUILD_TYPE=Debug")
    list(APPEND VARIANTS "-G \"Unix Makefiles\" -DCMAKE_BUILD_TYPE=Release")
    list(APPEND VARIANTS "-G \"Unix Makefiles\" -DCMAKE_BUILD_TYPE=Debug")
elseif(CYGWIN)
    # Nothing
elseif(UNIX)
    list(APPEND VARIANTS "-G \"Unix Makefiles\" -DCMAKE_CXX_COMPILER=$(which g++) -DCMAKE_BUILD_TYPE=Release")
    list(APPEND VARIANTS "-G \"Unix Makefiles\" -DCMAKE_CXX_COMPILER=$(which g++) -DCMAKE_BUILD_TYPE=Debug")
    list(APPEND VARIANTS "-G \"Unix Makefiles\" -DCMAKE_CXX_COMPILER=$(which clang++) -DCMAKE_BUILD_TYPE=Release")
    list(APPEND VARIANTS "-G \"Unix Makefiles\" -DCMAKE_CXX_COMPILER=$(which clang++) -DCMAKE_BUILD_TYPE=Debug")
endif()
list(LENGTH VARIANTS variants_count)
math(EXPR end "${variants_count} - 1")

foreach(i RANGE ${end})
    list(GET VARIANTS ${i} variant)
    string(REGEX REPLACE " " "-" variant_label "${variant}")

    add_custom_command(TARGET run_all
                       COMMAND ${CMAKE_COMMAND} -E echo "Setting up '${variant}'"
                       COMMAND ${CMAKE_COMMAND} -E make_directory ${CMAKE_BINARY_DIR}/${i}
                       COMMAND ${CMAKE_COMMAND} -E sleep 1
                       WORKING_DIRECTORY ${CMAKE_BINARY_DIR})

    add_custom_command(TARGET run_all
                       COMMAND ${CMAKE_COMMAND} -E echo "Running variant: '${variant}'"
                       COMMAND ${CMAKE_COMMAND} ../.. ${variant} ${common_flags}
                       COMMAND ${CMAKE_COMMAND} --build .
                       COMMAND ${CMAKE_COMMAND} --build . --target run
                       WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/${i})
endforeach()

message("
==========================
  Configuration finished
==========================

 - Source: ${SOURCE_NAME}.cpp
 - CPU model: ${CPU_MODEL}
 - System: ${CMAKE_SYSTEM_NAME}
 - Environment: ${ENVIRONMENT}
 - Compiler: ${CMAKE_CXX_COMPILER_ID}-${CXX_COMPILER_VERSION}
 - Build type: ${CMAKE_BUILD_TYPE}

 Output directory: ${OUTPUT_PATH}
 Assembly output file: ${assembly_listing_file}
 Results output file: output.txt

 Targets:

   run: Runs timings for the current configuration, stores results in results output file.
        Invoke as: \"cmake --build . --target run\" or \"make run\" on build/ directory.

   run_all: Builds and runs all the predefined variants (Generators/compilers, debug/release, etc).
            See VARIANTS list after run_all custom target definition in CMakeLists.txt.
            Invoke as: \"cmake --build . --target run_all\" or \"make run_all\" on build/ directory.
")
