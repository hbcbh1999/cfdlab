#!/bin/bash

# Set this to your actual spack view dir
SPACK_VIEW=/opt/spack

COMMAND="spack view -v -d no"
ACTION=symlink

dolink()
{
   $COMMAND $ACTION $SPACK_VIEW $1
   # Delete some useless stuff
   rm -f $SPACK_VIEW/include/index.html
   rm -f $SPACK_VIEW/share/info/dir
}

if [ ! -d "$SPACK_VIEW" ]; then
   echo "Directory $SPACK_VIEW does not exist"
   exit
fi

# Delete all existing stuff
rm -rf $SPACK_VIEW/*
rm -rf $SPACK_VIEW/.spack
rm -rf $SPACK_VIEW/.spack-empty
rm -rf $SPACK_VIEW/.nagged

dolink adol-c
dolink arpack-ng
dolink assimp
dolink boost
dolink bzip2
dolink cmake
dolink gmsh
dolink gsl
dolink hdf5
dolink metis
dolink muparser
dolink mumps
dolink nanoflann
dolink netcdf
dolink netcdf-cxx
dolink netlib-scalapack
dolink oce
dolink openblas
dolink openmpi
dolink p4est
dolink petsc
dolink slepc
dolink suite-sparse
dolink sundials
dolink tbb
dolink trilinos
dolink zlib
