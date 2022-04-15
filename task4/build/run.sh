#!/bin/bash
 
cmake -DCMAKE_BUILD_TYPE=Debug ..
make -j 5
make coverage_report -j 5
