#!/bin/bash

mkdir -p /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/Khosh_comparison_masked/results/$1/slurm_output
cd /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/Khosh_comparison_masked/results/$1/slurm_output

for repeat in 1 2 3
do
    #sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/Khosh_comparison_masked/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/Khosh_comparison_masked/scripts/1node4.sh $1 $repeat
    #sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/Khosh_comparison_masked/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/Khosh_comparison_masked/scripts/1node8.sh $1 $repeat
    #sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/Khosh_comparison_masked/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/Khosh_comparison_masked/scripts/1node12.sh $1 $repeat
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/Khosh_comparison_masked/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/Khosh_comparison_masked/scripts/1node16.sh $1 $repeat
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/Khosh_comparison_masked/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/Khosh_comparison_masked/scripts/2node36.sh $1 $repeat
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/Khosh_comparison_masked/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/Khosh_comparison_masked/scripts/4node84.sh $1 $repeat
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/Khosh_comparison_masked/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/Khosh_comparison_masked/scripts/6node132.sh $1 $repeat
    #sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/Khosh_comparison_masked/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/Khosh_comparison_masked/scripts/8node168.sh $1 $repeat
    #sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/Khosh_comparison_masked/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/Khosh_comparison_masked/scripts/12node264.sh $1 $repeat
    #sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/Khosh_comparison_masked/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/Khosh_comparison_masked/scripts/16node360.sh $1 $repeat
done
