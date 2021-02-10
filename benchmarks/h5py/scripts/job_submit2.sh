#!/bin/bash

mkdir -p /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py/results/$1/slurm_output
cd /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py/results/$1/slurm_output

for repeat in 1 2 3
do
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py/scripts/1node12.sh $1 $repeat
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py/scripts/2node36.sh $1 $repeat
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py/scripts/4node84.sh $1 $repeat
    #sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py/scripts/6node132.sh $1 $repeat
done
