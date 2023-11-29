# Title / name of your software 

**MASoiC:** Multi-Agent System to Support Decisions on Import Contracts

# Authors: 

* Guilherme Nascimento Pate Santos
* Carlos José Pereira De Lucena

# Affiliations:
Pontifical Catholic University of Rio de Janeiro 
<br>
Computer Science Department
<br>
Marquês de São Vicente Street, 225 - Rio de Janeiro
<br>
CEP 22453-900  – Brazil

# Author’s email address and Twitter handle
* **e-mail:** gnascimento@inf.puc-rio.br
* **e-mail:** guinaspas@gmail.com
* **Twitter:** @guinaspas
* **e-mail:** lucena@inf.puc-rio.br 

# MASoiC
Multi-agent System for Decision Support in Import Contracts

MASoiC V1 focuses on:

Provide a scalable application with good I/O performance.

Integrate interfaces of different types, which allows for adaptability of behavior.

Interfaces allow various modes of information transport (files, messages, memory)

Ease of use of the system was enabled through a combination of developments with: Python 3, Java, Jade, MQL5 and AutoIT v3.

Furthermore, the APIs made for MASoiC V1 are based on three different Data Groups where one interface provides an RPA-type integration for searching historical data, another an online integration with the MQL5-type stock exchange through MetaTrader 5 , finally the simulation mode that performs the message exchange for decision making.

In the data stage MASoiC V1 follows a real data consumption flow using an abstraction of I/O “steps”, eliminating the need for more detailed management.

Data Engines The MASoiC V1 engine abstraction allows you to reuse APIs for different scenarios, eliminating the need for drastic code changes.

*******
Summary
 1. [MetaTrader5](#trader)
 2. [AutoIT](#RPA)
 3. [Python](#py)
 4. [Eclipse jee índigo SR2 e Java JDK8](#java)
 5. [Jade framework](#Jade)

*******

# Documentation
Please find the User Guide of MASoiC v1


>*In order to use MASoiC (Multi-Agent System for Intelligent Decision Support in Import Contracts) in a development environment, it will be necessary to install some software that will be presented below.
There is no type of order regarding installation, we just use a framework (Jade) as a dependency in the development of the multi-agent ecosystem.*

In this sense, as a starting point we have the list of software to carry out the necessary installations:

* **MetaTrader5**
* **AutoIT**
* **Python**
* **Java JDK 8**
* **Eclipse jee índigo SR2**
* **Jade framework**

<div id='trader'/> 

 ## [*METATRADER INSTALLATION*] (https://www.metatrader5.com/pt/download)

Starting with MetaTrader5, we will follow the order presented previously, following the URL where we can find the installation file (https://www.metatrader5.com/pt/download). MetaTrader5 is free stock exchange asset data analysis software; this software is available for Windows, Linux and Mac. With this software we can be more specific in creating programs for technical analysis and analytical instruments with regard to to stock exchange assets.

![image](https://github.com/guinaspas/MASoiC/assets/75345281/6eec94df-6e92-4d15-a9db-4f6f0db4dda1)

<div id='RPA'/>
AUTOIT v3 INSTALLATION

Next step, we will install AutoIT, which is software that allows you to build an RPA to search for information that is not available via a REST API, for example. This software can be found at URL (https://www.autoitscript.com/site/autoit/downloads/), the software is available for Windows, Linux and Mac.
Data extractions from bodies such as the World Bank were done with this software, as we did not have a REST API available. In this way, it was possible to create automations to enable the extraction of important data for decision making.

![image](https://github.com/guinaspas/MASoiC/assets/75345281/f48e4cb6-3dbd-4f4c-a5dc-b87f9e103d60)

After installing Auto IT we need to use “autoit-v3-setup.exe” which brings a setup that will place the files in the “AutoIT3” folder in “Program Files (x86)”. Within this folder we can obtain the “Extras” support programs.

Video Configuration for RPA search interface for historical data on the value of the dollar and average selling price of gasoline.
•	Monitor Used: Intel(R) UHD Graphics
•	Configured Video Size: 1366 x 768 
•	Bit Depth: 6 bits
•	Frequency: 60,06 Hz
•	Color Format: RGB
•	Color Space: SDR


<div id='py'/>
PYTHON INSTALLATION

For Python we use the Anaconda distribution, the installer can be found at the URL (https://www.anaconda.com/products/distribution) and is available for Windows, Linux and Mac. With Anaconda installed we can download most of the libraries used in development with Python, for example, the OS and Pandas library. With Python, we built, for example, an auxiliary program to structure the MASoiC software environment.

![image](https://github.com/guinaspas/MASoiC/assets/75345281/4027931b-c6cd-4945-b02e-85564c50c278)

Installing anaconda with jupyter notebook.
 
![image](https://github.com/guinaspas/MASoiC/assets/75345281/9293db75-3823-46ff-af90-3705e594190f)


<div id='java'/>
Java JDK8 and Eclipse Installation

After installing Eclipse and Java JDK8, we started adding the Jade framework library. In this sense, we can then start the negotiation ecosystem with agents developed in Java with JADE. 
Starting the container with JADE must be done by a common Java application and its start will use localhost.

1)	 Start of the main container 


![image](https://github.com/guinaspas/MASoiC/assets/75345281/7245f286-39c6-4a1b-a903-4ea6f5a7353d)


![image](https://github.com/guinaspas/MASoiC/assets/75345281/579565b2-6748-4fa4-af62-f9a8f975fb9d)


2)	Start of the Secondary Container with the importing agent – this container will be for use by those interested in carrying out an import

![image](https://github.com/guinaspas/MASoiC/assets/75345281/5b03e6a4-62b0-45e1-b1c0-681d41d86d8b)


![image](https://github.com/guinaspas/MASoiC/assets/75345281/e66b01c4-b53f-449c-ab72-fb8e50cae5bd)


<div id='Jade'/>

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
