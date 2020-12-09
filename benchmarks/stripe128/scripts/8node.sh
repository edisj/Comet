#!/bin/bash

#SBATCH --nodes=8  # number of nodes
#SBATCH --ntasks-per-node=24  # number of cores
#SBATCH --partition=compute       # partition
#SBATCH -e 8node.err # file to save job's STDERR (%j = JobId)
#SBATCH -o 8node.out # file to save job's STDOUT (%j = JobId)
#SBATCH --export=ALL
#SBATCH -t 01:00:00   # time in hh:mm:ss
#SBATCH --mail-type=ALL # Send an e-mail when a job starts, stops, or fails
#SBATCH --mail-user=ejakupov@asu.edu # Mail-to address

#echo commands to stdout
set -x

module unload mvapich2_ib/2.3.2
module load openmpi_ib/3.1.4
module load hdf5/1.10.3
source activate mda8

TEST_TOP=/oasis/projects/nsf/azs119/edisj/Comet/datafiles/YiiP_system.pdb
TEST_TRAJ=/oasis/projects/nsf/azs119/edisj/Comet/datafiles/YiiP_system_9ns_center100x.h5md

testdir=/oasis/scratch/comet/edisj/temp_project/benchmarking128/$SLURM_JOB_ID
mkdir -p $testdir
echo "Copying topology file from $TEST_TOP into $testdir"
time cp $TEST_TOP $testdir
echo "Copying trajectory file from $TEST_TRAJ into $testdir"
time cp $TEST_TRAJ $testdir

export OMP_NUM_THREADS=1

for j in 1 2 3
do
    echo "Running benchmark for 8 nodes, 192 processes"
    time ibrun -np 192 python -W ignore /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/stripe128/scripts/benchmark.py $testdir/YiiP_system.pdb $testdir/YiiP_system_9ns_center100x.h5md $1/8node_$j
done

echo "Purging scratch files"
time rm -r $testdir
