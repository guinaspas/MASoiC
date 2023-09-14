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
