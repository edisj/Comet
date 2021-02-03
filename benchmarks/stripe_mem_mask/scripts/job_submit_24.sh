#!/bin/bash

mkdir -p /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/stripe_mem_mask/results/$1/slurm_output
cd /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/stripe_mem_mask/results/$1/slurm_output

for repeat in 1 2 3
do
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/stripe_mem_mask/scripts/copy_file_24.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/stripe_mem_mask/scripts/1node1_24.sh $1 $repeat
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/stripe_mem_mask/scripts/copy_file_24.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/stripe_mem_mask/scripts/1node24_24.sh $1 $repeat
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/stripe_mem_mask/scripts/copy_file_24.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/stripe_mem_mask/scripts/2node48_24.sh $1 $repeat
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/stripe_mem_mask/scripts/copy_file_24.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/stripe_mem_mask/scripts/4node96_24.sh $1 $repeat
done
