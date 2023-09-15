# MASoiC
Multi-Agent System to Support Decisions on Import Contracts

MASoiC V1 focuses on:

Performance I/O scalability in high performance computing (HPC) applications.
Adaptability unified interfaces to allow for several modes of transport (files, memory-to-memory)
Ease of Use two-level application programming interface (APIs)
Full APIs for HPC applications: C++11, Fortran 90, C 99, Python 2 and 3
Simplified High-Level APIs for data analysis: Python 3, Java, Jade, MQL5 and AutoIT v3
In addition, MASoiC V1 APIs are based on:

MPI MASoiC V1 is MPI-based, it can be used in non-MPI serial code. Non-MPI 100% serial build is optional.

Data Groups MASoiC V1 favors a deferred/prefetch/grouped variables transport mode by default to maximize data-per-request ratios. Sync mode, one variable at a time, is treated as the special case.

Data Steps MASoiC V1 follows the actual production/consumption of data using an I/O “steps” abstraction removing the need to manage extra indexing information.

Data Engines MASoiC V1 Engine abstraction allows for reusing the APIs for different transport modes removing the need for drastic code changes.


# Documentação
Please find the User Guide of MASoiC v1

![image](https://github.com/guinaspas/MASoiC/assets/75345281/e66b01c4-b53f-449c-ab72-fb8e50cae5bd)



# Getting MASoiC V1
From source: Install MASoiC V1 documentation requires: CMake v3.6 or above. For a cmake configuration example see scripts/runconf/runconf.sh

anaconda and others Conda packages:
https://anaconda.org
https://anaconda.org/conda-forge/....

Docker images:

Ubuntu 18.04: under scripts/docker/images/ubuntu18.04/Dockerfile
Once MASoiC V1 is installed refer to:

Linking MASoiC V1


# Releases
Latest release: v1.0.0

Previous releases: https://github.com/ornladios/MASoiC_V1/releases

# Reporting Bugs
If you found a bug, please open an issue on MASoiC_V1 github repository

# Contributing
We invite the community to contribute, see Contributor's Guide to MASoiC V1 for instructions on how to contribute. MASoiC V1 will always be free and open-source.

# License
MASoiC_V1 >= 1.0 is licensed under the Apache License v2.0. See the accompanying Copyright.txt for more details.

# Directory layout
bindings - public application programming interface, API, language bindings (C++11, C, Fortran, Python and Matlab)

cmake - Project specific CMake modules

examples - Simple set of examples in different languages

scripts - Project maintenance and development scripts

source - Internal source code for private components

MASoiC - source directory for the MASoiC V1 library to be installed under install-dir/lib/libMASoiC_V1.
utils - source directory for the binary utilities, to be installed under install-dir/bin
testing - Tests using gtest
