#!/bin/sh
CURRENT_DIR=$(pwd)
cd $CURRENT_DIR

if [ -d "build/" ];then
  echo "-- [rm build dir build...]"
  rm -rf build
  mkdir build
  cd build
  echo "-- [cmake ..]"
  cmake ..
  echo "-- [make -j4]"
  make -j4
else
  echo "-- create build dir..."
  mkdir build
  cd build
  echo "-- [cmake ..]"
  cmake ..
  echo "-- [make -j4]"
  make -j4
fi
