#!/bin/bash

mkdir -p /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/striping/results/$1/slurm_output
cd /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/striping/results/$1/slurm_output

for repeat in 1 2 3
do
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/striping/scripts/copy_file_2000.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/striping/scripts/1node1_2000.sh $1 $repeat
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/striping/scripts/copy_file_2000.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/striping/scripts/1node24_2000.sh $1 $repeat
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/striping/scripts/copy_file_2000.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/striping/scripts/2node48_2000.sh $1 $repeat
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/striping/scripts/copy_file_2000.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/striping/scripts/4node96_2000.sh $1 $repeat
done
