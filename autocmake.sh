#!/bin/sh
CURRENT_DIR=$(pwd)
cd ${CURRENT_DIR}
echo "-- sh [exec chmod +x gradlew]"
chmod +x gradlew

echo "-- sh [exec gradlew]"
./gradlew

multi="$1"

if [[ -d "build/" ]];then
  echo "-- sh [rm build dir build...]"
  rm -rf build
  rm -rf output
  rm -rf *.tmp
  rm -rf .gradle
  mkdir build
  cd build
  echo "-- sh [cmake ..]"
  cmake ..
  echo "-- sh [make]"
  make ${multi}
else
  echo "-- sh [create build dir...]"
  rm -rf build
  rm -rf output
  rm -rf *.tmp
  rm -rf .gradle
  mkdir build
  cd build
  echo "-- sh [cmake ..]"
  cmake ..
  echo "-- sh [make]"
  make ${multi}
fi
