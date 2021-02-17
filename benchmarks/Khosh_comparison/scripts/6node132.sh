#!/bin/bash

#SBATCH --nodes=6  # number of nodes
#SBATCH --ntasks-per-node=24  # number of cores
#SBATCH --partition=compute       # partition
#SBATCH -e 6node132.%j.err # file to save job's STDERR (%j = JobId)
#SBATCH -o 6node132.%j.out # file to save job's STDOUT (%j = JobId)
#SBATCH -t 01:30:00   # time in hh:mm:ss
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

time ibrun -np 132 python -W ignore /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/Khosh_comparison/scripts/benchmark.py $testdir/small_top.pdb $testdir/small_traj.h5md $1/6node_$2

rm -r $testdir
