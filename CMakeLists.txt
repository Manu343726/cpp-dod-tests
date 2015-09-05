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

include(sources.cmake)

foreach(name ${SOURCE_NAMES})
    message(STATUS "Setting up ${name}...")

    set(SOURCE_FILE ${name}.cpp)
    list(APPEND SOURCE_FILES ${SOURCE_FILE})
    set(OUTPUT_FILE ${name}_output.txt)
    list(APPEND OUTPUT_FILES ${OUTPUT_FILE})

    if(MSVC)
        set(ASSEMBLY_LISTING_FILE ${name}.asm)
    else()
        set(ASSEMBLY_LISTING_FILE ${name}.s)
    endif()

    list(APPEND ASSEMBLY_LISTING_FILES ${ASSEMBLY_LISTING_FILE})

    set(target ${name})
    list(APPEND TARGETS ${target})

    # See unique-config emulation trick bellow
    if(MSVC)
        add_executable(${target} EXCLUDE_FROM_ALL ${SOURCE_FILE})
    else()
        add_executable(${target} ${SOURCE_FILE})
    endif()

    # Compiler flags
    if(MSVC)
        # SSE2 flag ignored in 64 bit builds, it's enabled by default.
        # See http://stackoverflow.com/questions/1067630/sse2-option-in-visual-c-x64
        set(SIMD_FLAGS $<$<CONFIG:Release>:/arch:sse2>)

        # Omit frame pointer, enable intrinsic functions
        set(OPT_FLAGS $<$<CONFIG:Release>:/Oy /Oi>)

        if(GENERATE_ASSEMBLY)
            set(ASMGEN_FLAGS "/Fa${OUTPUT_PATH}/${ASSEMBLY_LISTING_FILE}" /FA)
        endif()
    else()
        set(STD_FLAGS -std=c++11)
        set(SIMD_FLAGS $<$<CONFIG:Release>:-ftree-vectorize -msse2>)
        set(OPT_FLAGS $<$<CONFIG:Release>:-O3 -g0 -fomit-frame-pointer>) # Frame pointer out not bcos performance but to clear listings a bit

        if(GENERATE_ASSEMBLY)
            add_custom_command(TARGET ${target}
                               POST_BUILD
                               COMMAND make ARGS ${name}.s
                               COMMAND ${CMAKE_COMMAND} -E copy
                                   "${CMAKE_BINARY_DIR}/CMakeFiles/${target}.dir/${name}.cpp.s"
                                   "${OUTPUT_PATH}/${ASSEMBLY_LISTING_FILE}"
                               WORKING_DIRECTORY ${CMAKE_BINARY_DIR})
        endif()
    endif()

    target_compile_options(${target} PRIVATE ${STD_FLAGS} ${OPT_FLAGS} ${SIMD_FLAGS} ${ASMGEN_FLAGS})

    # External dependencies (Boost, etc)
    if(WIN32)
        set(INCLUDE_DIRS C:/MinGW/include)
    elseif(CYGWIN)
        set(INCLUDE_DIRS /cygdrive/c/MinGW/include)
    elseif(UNIX)
        set(INCLUDE_DIRS usr/local/include)
    endif()

    target_include_directories(${target} PRIVATE ${INCLUDE_DIRS})

    # Workaround to make VS behave like unique-configuration generator:
    if(WIN32 AND MSVC)
        set_target_properties(${target}
                              PROPERTIES EXCLUDE_FROM_ALL 1 EXCLUDE_FROM_DEFAULT_BUILD 1)

        # Build target using CMAKE_BUILD_TYPE always, as unique-configuration makefiles
        add_custom_target(build_msvc_${target} ALL
                          COMMAND ${CMAKE_COMMAND} --build \".\" --target ${target} --config ${CMAKE_BUILD_TYPE}
                          WORKING_DIRECTORY ${CMAKE_BINARY_DIR})
    endif()

    set(run_status_message ">>>> Running ${target} target on '${CPU_MODEL}', ${CMAKE_SYSTEM}-${ENVIRONMENT}-${CMAKE_CXX_COMPILER_ID}-${CXX_COMPILER_VERSION} (${CMAKE_BUILD_TYPE})")
    set(run_finished_message ">>>> Finished. Results in '${OUTPUT_FILE}' file at ${OUTPUT_PATH}")
    if(WIN32)
        add_custom_target(run_${name}
                          COMMAND ${CMAKE_COMMAND} -E echo "${run_status_message}"
                          COMMAND ${target}.exe >> ${OUTPUT_FILE}
                          COMMAND ${CMAKE_COMMAND} -E echo "${run_finished_message}"
                          WORKING_DIRECTORY ${OUTPUT_PATH})
    else()
        add_custom_target(run_${name}
                          COMMAND ${CMAKE_COMMAND} -E echo "${run_status_message}"
                          COMMAND ./${target} | tee ${OUTPUT_FILE}
                          COMMAND ${CMAKE_COMMAND} -E echo "${run_finished_message}"
                          WORKING_DIRECTORY ${OUTPUT_PATH})
    endif()

    set(RUN_TARGETS "${RUN_TARGETS} ${RUN_TARGET}")
endforeach()

include(variants.cmake)

function(generate_all_targets TARGET_NAME RUN)
    if(RUN)
        set(action Running)
    else()
        set(action Building)
    endif()

    # Custom target to do all the work with a simple command:
    add_custom_target(${TARGET_NAME} COMMAND ${CMAKE_COMMAND} -E echo \">>>> ${action} all variants\" WORKING_DIRECTORY ${CMAKE_BINARY_DIR})

    list(LENGTH VARIANTS variants_count)
    math(EXPR end "${variants_count} - 1")

    foreach(i RANGE ${end})
        list(GET VARIANTS ${i} variant)
        string(REGEX REPLACE " " "-" variant_label "${variant}")

        add_custom_command(TARGET ${TARGET_NAME}
                           COMMAND ${CMAKE_COMMAND} -E echo "Setting up '${variant}'"
                           COMMAND ${CMAKE_COMMAND} -E make_directory ${CMAKE_BINARY_DIR}/${i}
                           COMMAND ${CMAKE_COMMAND} -E sleep 1
                           WORKING_DIRECTORY ${CMAKE_BINARY_DIR})

        add_custom_command(TARGET ${TARGET_NAME}
                           COMMAND ${CMAKE_COMMAND} -E echo "Building variant: '${variant}'"
                           COMMAND ${CMAKE_COMMAND} ../.. ${variant} ${COMMON_VARIANT_FLAGS}
                           COMMAND ${CMAKE_COMMAND} --build .
                           WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/${i})

        if(RUN)
            foreach(target ${TARGETS})
                add_custom_command(TARGET ${TARGET_NAME}
                                   COMMAND ${CMAKE_COMMAND} -E echo "Running target ${target}"
                                   COMMAND ${CMAKE_COMMAND} --build . --target run_${target}
                                   WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/${i})
            endforeach()
        endif()

        add_custom_command(TARGET ${TARGET_NAME}
                           COMMAND ${CMAKE_COMMAND} -E echo "Tiding up '${variant}' working tree..."
                           COMMAND ${CMAKE_COMMAND} -E remove_directory ${CMAKE_BINARY_DIR}/${i}
                           COMMAND ${CMAKE_COMMAND} -E sleep 1
                           WORKING_DIRECTORY ${CMAKE_BINARY_DIR})
    endforeach()
endfunction()

generate_all_targets(run_all TRUE)
generate_all_targets(build_all FALSE)

string(REPLACE ";" " " SOURCE_FILES_STR "${SOURCE_FILES}")
string(REPLACE ";" " " ASSEMBLY_LISTING_FILES_STR "${ASSEMBLY_LISTING_FILES}")
string(REPLACE ";" " " OUTPUT_FILES_STR "${OUTPUT_FILES}")

set(INFO_MESSAGE "
==========================
  Configuration finished
==========================

 - Sources: ${SOURCE_FILES_STR}
 - CPU model: ${CPU_MODEL}
 - System: ${CMAKE_SYSTEM_NAME}
 - Environment: ${ENVIRONMENT}
 - Compiler: ${CMAKE_CXX_COMPILER_ID}-${CXX_COMPILER_VERSION}
 - Build type: ${CMAKE_BUILD_TYPE}

 Output directory: ${OUTPUT_PATH}
 Assembly output files: ${ASSEMBLY_LISTING_FILES_STR}
 Results output files: ${OUTPUT_FILES_STR}

 Targets:
")

foreach(target ${TARGETS})
    set(INFO_MESSAGE "${INFO_MESSAGE}
   run_${target}: Runs timings for the ${target} target with current configuration. Invoke as: \"cmake --build . --target run_${target}\" or \"make run_${target}\" on build/ directory.
")
endforeach()

set(INFO_MESSAGE "${INFO_MESSAGE}
   run_all: Builds and runs all the predefined variants (Generators/compilers, debug/release, etc).
            See VARIANTS list after run_all custom target definition in CMakeLists.txt.
            Invoke as: \"cmake --build . --target run_all\" or \"make run_all\" on build/ directory.
")

message("${INFO_MESSAGE}")
