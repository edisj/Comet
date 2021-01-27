#!/bin/bash

mkdir -p /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/mask_and_memory/results/$1/slurm_output
cd /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/mask_and_memory/results/$1/slurm_output

for repeat in 1 2 3
do
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/mask_and_memory/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/mask_and_memory/scripts/2node24.sh $1 $repeat
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/mask_and_memory/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/mask_and_memory/scripts/4node72.sh $1 $repeat
    #sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/mask_and_memory/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/mask_and_memory/scripts/6node120.sh $1 $repeat
    #sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/mask_and_memory/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/mask_and_memory/scripts/8node168.sh $1 $repeat
    #sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/mask_and_memory/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/mask_and_memory/scripts/12node264.sh $1 $repeat
    #sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/mask_and_memory/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/mask_and_memory/scripts/16node360.sh $1 $repeat
done
