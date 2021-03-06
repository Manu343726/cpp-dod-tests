## Instructions

The project contains a `CMakeLists.txt` file with portable build and run settings. Just run cmake with the generator and compiler you want to test with. All output files are written to a hierarchical `results/[CPU-MODEL]/[SYSTEM]/[ENVIRONMENT-COMPILER]/[BUILD_TYPE]` directory.

### Targets

The script looks at the `SOURCE_NAMES` list defined in the `sources.cmake` file to figure out what `.cpp` files should be configured and built. For each source `SOURCE` specified there, a cmake executable target named `SOURCE` is generated. This target uses `[PROJECT_ROOT_DIR]/[SOURCE].cpp` as unique source for the executable. Also each one of this targets has its own assembly listings file, timing output file, etc.

A possible value for the `SOURCE_NAMES` list could be:

``` cmake
set(SOURCE_NAMES dod_perfv1 dod_perfv2)
```

### Configure and build

Create a `build/` directory for out-of-source build, then run cmake configure and build steps:

``` bash
Manu @ cpp_dod_tests $ mkdir build && cd build
Manu @ cpp_dod_tests/build $ cmake .. -G "Visual Studio 14" -DCPU_MODEL="My CPU" -DCMAKE_BUILD_TYPE=Release
Manu @ cpp_dod_tests/build $ cmake --build .
```

The `CPU_MODEL` option is mandatory, CPU model information is used for results organization. Also note build type can be passed as configure option with `CMAKE_BUILD_TYPE` variable (Release by default).

*To ensure timings are run using the correct build configuration, a workaround to the multi-configuration setup of Visual Studio generator was done. By default VS generator ignores `CMAKE_BUILD_TYPE` variable, the config is selected at build time through the IDE or by passing a `--config` option to the cmake build command. This makes impossible to know what build type will be used at cmake configuration time. Instead, the workaround wraps the build call by passing the value held by `CMAKE_BUILD_TYPE`. This way we can safely do configuration based on build type, also the code is configured and run in the same way regardless its using a VS generator or a makefiles generator (i.e. always passing build type through `CMAKE_BUILD_TYPE` variable at configure call).*

Compiler flags can be specified in the `compiler_clags.cmake` file, using the following variables:

 - `STD_FLAGS`: C++ version and stdlib related flags.
 - `OPT_FLAGS`: Optimization flags.
 - `DEBUG_FLAGS`: Flags to control debug settings.
 - `SIMD_FLAGS`: SIMD related flags.
 - `USER_FLAGS`: Extra user defined flags.

The classification of different compiler flags into that variables is not mandatory, actually those flags are passed by the following `target_compile_options()` call:

``` cmake
target_compile_options(${target} PRIVATE ${STD_FLAGS} ${OPT_FLAGS} ${DEBUG_FLAGS} ${SIMD_FLAGS} ${USER_FLAGS})
``` 

So you can simply pass the flags you want through the `USER_FLAGS` variable for example.

### Assembly listings

The cmake script includes a `GENERATE_ASSEMBLY` option that, in addition to building the example, generates an assembly listing file using the same build settings. Just enable it when invoking cmake:

``` bash
Manu : cpp_dod_tests/build $ cmake .. -G "Visual Studio 14" -DGENERATE_ASSEMBLY=ON -DCPU_MODEL="..." ...
```

### Run and log timings to a file

A set of custom targets named `run_[TARGET_NAME]` was added to run and store timings in an easy way. Results are written to a `output_[TARGET_NAME].txt` file in the results directory:

``` bash
Manu @ cpp_dod_tests/build $ cmake --build . --target run_dod_perfv1 # Or "make run_dod_perfv1" when using makefiles generator
```

Finally a `run_all` target is provided to configure and run a set of specific variants (Visual Studio generator vs Unix Makefiles for MinGW GCC, Debug vs Release, etc) defined as a `VARIANTS` cmake list in the `variants.cmake` file. This makes running tests in multiple machines pretty straightforward:

``` bash
Manu @ cpp_dod_tests/build $ cmake .. -G "Unix Makefiles" -DGENERATE_ASSEMBLY=ON -DCPU_MODEL="My CPU"
Manu @ cpp_dod_tests/build $ make run_all
```

*Also there's a `build_all` target which does the same but without running the tests, only building them on all variants:*

``` bash
Manu @ cpp_dod_tests/build $ cmake .. -G "Unix Makefiles" -DGENERATE_ASSEMBLY=ON -DCPU_MODEL="My CPU"
Manu @ cpp_dod_tests/build $ make build_all
```
