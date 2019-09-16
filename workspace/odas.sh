#!/usr/bin/env bash

set -e

rm -rf odas

git clone https://github.com/introlab/odas

cd odas && mkdir build && cd build && cmake ../ && make
