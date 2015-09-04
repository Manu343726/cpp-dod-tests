## Instructions

The project contains a `CMakeLists.txt` file with portable build and run settings. Just run cmake with the generator and compiler you want to test with. All output files are written to a hierarchical `results/[CPU-MODEL]/[SYSTEM]/[ENVIRONMENT-COMPILER]/` directory.

### Configure and build

Create a `build/` directory for out-of-source build, then run cmake configure and build steps:

``` bash
Manu @ joaquin_dod $ mkdir build && cd build
Manu @ joaquin_dod/build $ cmake .. -G "Visual Studio 14" -DCPU_MODEL="My CPU"
Manu @ joaquin_dod/build $ cmake --build . --config Release
```

The `CPU_MODEL` option is mandatory, CPU model information is used for results organization.
Also, **don't forget to enable Release mode when building** (`--config Release`), Debug mode is used by default.

### Assembly listings

The cmake script includes a `GENERATE_ASSEMBLY` option that, in addition to building the example, generates an assembly listing file using the same build settigns. Just enable it when invoking cmake:

``` bash
Manu : joaquin_dod/build $ cmake .. -G "Visual Studio 14" -DGENERATE_ASSEMBLY=ON -DCPU_MODEL="..."
```

### Run and log timings to a file

A custom target named `run` was added to run and store timings in an easy way. Results are written to a `output.txt` file in the results directory:

``` bash
Manu @ joaquin_dod/build $ cmake --build . --target=run # Or "make run" when using makefiles generator
```
