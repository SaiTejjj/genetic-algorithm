#!/bin/bash
set -x
python3 -m cProfile -o profiling.data main.py > out.txt
echo -e "strip\nsort time\nstats" | python3 -m pstats profiling.data > profiling.out
