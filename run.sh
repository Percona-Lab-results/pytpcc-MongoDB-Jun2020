ex=/mnt/data/vadim/bench/pypy2.7-v7.3.1-linux64/bin/pypy
mkdir -p res
for i in `seq 10 20 250` ; do $ex tpcc.py --config mconfig --warehouses 100 --no-load mongodb --clients $i --duration 900 | tee -a resdouble/res${i}_pypy.txt ; done
#for i in `seq 10 20 250 ` ; do ./tpcc.py --config mconfig --warehouses 100 --no-load mongodb --clients $i --duration 900 | tee -a res/res${i}_NOpypy.txt ; don
