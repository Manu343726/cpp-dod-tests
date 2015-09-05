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
Manu @ joaquin_dod $ mkdir build && cd build
Manu @ joaquin_dod/build $ cmake .. -G "Visual Studio 14" -DCPU_MODEL="My CPU" -DCMAKE_BUILD_TYPE=Release
Manu @ joaquin_dod/build $ cmake --build .
```

The `CPU_MODEL` option is mandatory, CPU model information is used for results organization. Also note build type can be passed as configure option with `CMAKE_BUILD_TYPE` variable (Release by default).

*To ensure timings are run using the correct build configuration, a workaround to the multi-configuration setup of Visual Studio generator was done. By default VS generator ignores `CMAKE_BUILD_TYPE` variable, the config is selected at build time through the IDE or by passing a `--config` option to the cmake build command. This makes impossible to know what build type will be used at cmake configuration time. Instead, the workaround wraps the build call by passing the value held by `CMAKE_BUILD_TYPE`. This way we can safely do configuration based on build type, and the code is configured and run in the same way regardless its using a VS generator or a makefiles generator (i.e. always passing build type through `CMAKE_BUILD_TYPE` variable at configure call).*

### Assembly listings

The cmake script includes a `GENERATE_ASSEMBLY` option that, in addition to building the example, generates an assembly listing file using the same build settigns. Just enable it when invoking cmake:

``` bash
Manu : joaquin_dod/build $ cmake .. -G "Visual Studio 14" -DGENERATE_ASSEMBLY=ON -DCPU_MODEL="..." ...
```

### Run and log timings to a file

A set of custom targets named `run_[TARGET_NAME]` was added to run and store timings in an easy way. Results are written to a `output_[TARGET_NAME].txt` file in the results directory:

``` bash
Manu @ joaquin_dod/build $ cmake --build . --target run_dod_perfv1 # Or "make run_dod_perfv1" when using makefiles generator
```

Finally a `run_all` target is provided to configure and run a set of specific variants (Visual Studio generator vs Unix Makefiles for MinGW GCC, Debug vs Release, etc) defined as a `VARIANTS` cmake list in the `variants.cmake` file. This makes running tests in multiple machines pretty straightforward:

``` bash
Manu @ joaquin_dod/build $ cmake .. -G "Unix Makefiles" -DGENERATE_ASSEMBLY=ON -DCPU_MODEL="My CPU"
Manu @ joaquin_dod/build $ make run_all
```

*Also there's a `build_all` target which does the same but without running the tests, only building them on all variants:*

``` bash
Manu @ joaquin_dod/build $ cmake .. -G "Unix Makefiles" -DGENERATE_ASSEMBLY=ON -DCPU_MODEL="My CPU"
Manu @ joaquin_dod/build $ make build_all
```
