## The Soil and Water Assessment Tool (SWAT) [![Build Status](https://travis-ci.org/grmpfhmbl/swatmodel-trusty64.svg?branch=master)](https://travis-ci.org/grmpfhmbl/swatmodel-trusty64)

SWAT is a river basin scale model developed to quantify the impact of land management practices on water, sediment
and agricultural chemical yields in large complex watersheds with varying soils, land use and management conditions
over long periods of time. The main components of SWAT include weather, surface runoff, return flow, percolation,
evapotranspiration, transmission losses, pond & reservoir storage, crop growth & irrigation, groundwater flow, reach
routing, nutrient & pesticide loading, and water transfer.

SWAT is a public domain model actively supported by the USDA Agricultural Research Service at the Grassland, Soil and
Water Research Laboratory in Temple, Texas.

From: http://swat.tamu.edu/

Model executables to predict the effect of management decisions on water, sediment, nutrient and pesticide yields with reasonable accuracy on large, ungaged river basins

Cost, Licensing and Availability:

Model is offered free of charge from USDA through the link provided above. 

---

This is based on SWAT model version rev637. Get latest at http://swat.tamu.edu/


## Build

Makefile from https://zhiqiangyu.wordpress.com/swat/compile-and-debug-swat-with-gfortran-and-eclipse/ and slightly adapted.

Additional package is needed to build 32 & 64 bit on one machine `sudo apt-get install gfortran-multilib`

All build artifacts are put in _build_. To run just type `make <target>` on your command line. Replace _<target>_ with

* `rel32` --> release version 32bit
* `rel64` --> release version 64bit
* `debug32` --> debug version 32bit
* `debug64` --> debug version 64bit
* `clean` --> deletes all build artifacts
** `debug32_clean`, `debug64_clean`, `rel32_clean`, `rel64_clean` --> deletes build artifacts of specific version