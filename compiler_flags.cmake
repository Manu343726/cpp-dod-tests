if(MSVC)
    # SSE2 flag ignored in 64 bit builds, it's enabled by default.
    # See http://stackoverflow.com/questions/1067630/sse2-option-in-visual-c-x64
    set(SIMD_FLAGS $<$<CONFIG:Release>:/arch:sse2>)

    # Omit frame pointer, enable intrinsic functions
    set(OPT_FLAGS $<$<CONFIG:Release>:/Oy /Oi>)
else()
    set(STD_FLAGS -std=c++11)
    set(SIMD_FLAGS $<$<CONFIG:Release>:-ftree-vectorize -msse2>)
    set(OPT_FLAGS $<$<CONFIG:Release>:-O3 -g0 -fomit-frame-pointer>) # Frame pointer out not bcos performance but to clear listings a bit
endif()