#!/bin/bash

mkdir -p /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla_stripe/results/$1/slurm_output
cd /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla_stripe/results/$1/slurm_output

for repeat in 1 2 3
do
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla_stripe/scripts/24/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla_stripe/scripts/24/1node12.sh $1 $repeat
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla_stripe/scripts/24/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla_stripe/scripts/24/2node36.sh $1 $repeat
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla_stripe/scripts/24/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla_stripe/scripts/24/4node84.sh $1 $repeat
    #sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla_stripe/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/vanilla_stripe/scripts/6node132.sh $1 $repeat
done
