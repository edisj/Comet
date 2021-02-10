#!/bin/bash

mkdir -p /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla/results/$1/slurm_output
cd /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla/results/$1/slurm_output

for repeat in 1 2 3
do
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla/scripts/1node1.sh $1 $repeat
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla/scripts/1node24.sh $1 $repeat
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla/scripts/2node48.sh $1 $repeat
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla/scripts/4node96.sh $1 $repeat
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla/scripts/6node144.sh $1 $repeat
    #sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla/scripts/8node192.sh $1 $repeat
    #sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla/scripts/12node288.sh $1 $repeat
    #sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla/scripts/16node384.sh $1 $repeat
done
