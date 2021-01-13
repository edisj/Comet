#!/bin/bash

mkdir -p /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/striping/results/$1/slurm_output
cd /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/striping/results/$1/slurm_output

for repeat in 1 2 3
do
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/striping/scripts/copy_file_1000.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/striping/scripts/8node192_1000.sh $1 $repeat
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/striping/scripts/copy_file_1000.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/striping/scripts/16node384_1000.sh $1 $repeat
done
