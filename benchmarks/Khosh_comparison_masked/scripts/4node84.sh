#!/bin/bash

#SBATCH --nodes=4  # number of nodes
#SBATCH --ntasks-per-node=24  # number of cores
#SBATCH --partition=compute       # partition
#SBATCH -e 4node84.%j.err # file to save job's STDERR (%j = JobId)
#SBATCH -o 4node84.%j.out # file to save job's STDOUT (%j = JobId)
#SBATCH -t 02:00:00   # time in hh:mm:ss
#SBATCH --mail-type=ALL # Send an e-mail when a job starts, stops, or fails
#SBATCH --mail-user=ejakupov@asu.edu # Mail-to address

#echo commands to stdout
set -x

module unload mvapich2_ib/2.3.2
module load openmpi_ib/3.1.4
module load hdf5/1.10.3
source activate mda8

testdir=/oasis/scratch/comet/edisj/temp_project/benchmarking/$SLURM_JOB_DEPENDENCY

export OMP_NUM_THREADS=1

time ibrun -np 84 python -W ignore /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/Khosh_comparison_masked/scripts/benchmark.py $testdir/adk4AKE.psf $testdir/xtc600x.h5md $1/4node_$2

rm -r $testdir
