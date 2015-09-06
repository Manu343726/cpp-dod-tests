set(COMMON_VARIANT_FLAGS "-DGENERATE_ASSEMBLY=${GENERATE_ASSEMBLY} -DCPU_MODEL=\"${CPU_MODEL}\"")

if(WIN32)
    list(APPEND VARIANTS "-G \"Visual Studio 14\" -DCMAKE_BUILD_TYPE=Release")
    list(APPEND VARIANTS "-G \"Visual Studio 14\" -DCMAKE_BUILD_TYPE=Debug")
    list(APPEND VARIANTS "-G \"Unix Makefiles\" -DCMAKE_BUILD_TYPE=Release")
    list(APPEND VARIANTS "-G \"Unix Makefiles\" -DCMAKE_BUILD_TYPE=Debug")
elseif(CYGWIN)
    # Nothing
elseif(UNIX)
    list(APPEND VARIANTS "-G \"Unix Makefiles\" -DCMAKE_CXX_COMPILER=/usr/bin/g++ -DCMAKE_BUILD_TYPE=Release ${COMMON_VARIANT_FLAGS}")
    list(APPEND VARIANTS "-G \"Unix Makefiles\" -DCMAKE_CXX_COMPILER=/usr/bin/g++ -DCMAKE_BUILD_TYPE=Debug ${COMMON_VARIANT_FLAGS}")
    list(APPEND VARIANTS "-G \"Unix Makefiles\" -DCMAKE_CXX_COMPILER=/usr/bin/clang++ -DCMAKE_BUILD_TYPE=Release ${COMMON_VARIANT_FLAGS}")
    list(APPEND VARIANTS "-G \"Unix Makefiles\" -DCMAKE_CXX_COMPILER=/usr/bin/clang++ -DCMAKE_BUILD_TYPE=Debug ${COMMON_VARIANT_FLAGS}")
endif()
