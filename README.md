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


In order to use MASoiC (Multi-Agent System for Intelligent Decision Support in Import Contracts) in a development environment, it will be necessary to install some software that will be presented below.
There is no type of order regarding installation, we just use a framework (Jade) as a dependency in the development of the multi-agent ecosystem.

In this sense, as a starting point we have the list of software to carry out the necessary installations:

•	MetaTrader5
•	AutoIT
•	Python 
•	Java JDK 8
•	Eclipse jee índigo SR2
•	Jade framework

METATRADER INSTALLATION

Starting with MetaTrader5, we will follow the order presented previously, following the URL where we can find the installation file (https://www.metatrader5.com/pt/download). MetaTrader5 is free stock exchange asset data analysis software; this software is available for Windows, Linux and Mac. With this software we can be more specific in creating programs for technical analysis and analytical instruments with regard to to stock exchange assets.

![image](https://github.com/guinaspas/MASoiC/assets/75345281/6eec94df-6e92-4d15-a9db-4f6f0db4dda1)

AUTOIT v3 INSTALLATION

Next step, we will install AutoIT, which is software that allows you to build an RPA to search for information that is not available via a REST API, for example. This software can be found at URL (https://www.autoitscript.com/site/autoit/downloads/), the software is available for Windows, Linux and Mac.
Data extractions from bodies such as the World Bank were done with this software, as we did not have a REST API available. In this way, it was possible to create automations to enable the extraction of important data for decision making.

![image](https://github.com/guinaspas/MASoiC/assets/75345281/f48e4cb6-3dbd-4f4c-a5dc-b87f9e103d60)

 
 
 
 
 
 








After installing Auto IT we need to use “autoit-v3-setup.exe” which brings a setup that will place the files in the “AutoIT3” folder in “Program Files (x86)”. Within this folder we can obtain the “Extras” support programs. 


PYTHON INSTALLATION

For Python we use the Anaconda distribution, the installer can be found at the URL (https://www.anaconda.com/products/distribution) and is available for Windows, Linux and Mac. With Anaconda installed we can download most of the libraries used in development with Python, for example, the OS and Pandas library. With Python, we built, for example, an auxiliary program to structure the MASoiC software environment.

![image](https://github.com/guinaspas/MASoiC/assets/75345281/4027931b-c6cd-4945-b02e-85564c50c278)

Installing anaconda with jupyter notebook.
 
![image](https://github.com/guinaspas/MASoiC/assets/75345281/9293db75-3823-46ff-af90-3705e594190f)

Java JDK8 and Eclipse Installation

After installing Eclipse and Java JDK8, we started adding the Jade framework library. In this sense, we can then start the negotiation ecosystem with agents developed in Java with JADE. 
Starting the container with JADE must be done by a common Java application and its start will use localhost.

1)	 Start of the main container 


![image](https://github.com/guinaspas/MASoiC/assets/75345281/7245f286-39c6-4a1b-a903-4ea6f5a7353d)


![image](https://github.com/guinaspas/MASoiC/assets/75345281/579565b2-6748-4fa4-af62-f9a8f975fb9d)





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
