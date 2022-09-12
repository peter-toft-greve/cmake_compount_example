#!/bin/bash

rm -rf build
cmake -S . -B build -G Ninja
cmake --build build
ctest --testdir build
