#!/bin/bash

mkdir -p /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py_stripe/results/$1/slurm_output
cd /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py_stripe/results/$1/slurm_output

for repeat in 1 2 3
do
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py_stripe/scripts/24/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py_stripe/scripts/24/1node1.sh $1 $repeat
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py_stripe/scripts/24/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py_stripe/scripts/24/1node24.sh $1 $repeat
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py_stripe/scripts/24/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py_stripe/scripts/24/2node48.sh $1 $repeat
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py_stripe/scripts/24/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py_stripe/scripts/24/4node96.sh $1 $repeat
    sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py_stripe/scripts/24/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py_stripe/scripts/24/6node144.sh $1 $repeat
    #sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py_stripe/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py_stripe/scripts/8node192.sh $1 $repeat
    #sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py_stripe/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py_stripe/scripts/12node288.sh $1 $repeat
    #sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py_stripe/scripts/copy_file.sh /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/h5py_stripe/scripts/16node384.sh $1 $repeat
done
