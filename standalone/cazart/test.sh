#!/bin/bash
export LD_PRELOAD=$(pwd)/libflexmem.so
./test
export LD_PRELOAD=
