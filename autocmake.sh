#!/bin/sh
CURRENT_DIR=$(pwd)
cd $CURRENT_DIR
echo "-- sh [exec chmod +x gradlew]"
chmod +x gradlew

echo "-- sh [exec gradlew]"
./gradlew


if [ -d "build/" ];then
  echo "-- sh [rm build dir build...]"
  rm -rf build
  mkdir build
  cd build
  echo "-- sh [cmake ..]"
  cmake ..
  echo "-- sh [make -j4]"
  make -j
else
  echo "-- sh [create build dir...]"
  mkdir build
  cd build
  echo "-- sh [cmake ..]"
  cmake ..
  echo "-- sh [make -j4]"
  make -j
fi
