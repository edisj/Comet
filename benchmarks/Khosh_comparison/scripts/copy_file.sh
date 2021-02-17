#!/bin/bash

#SBATCH --nodes=1  # number of nodes
#SBATCH --ntasks-per-node=1  # number of cores
#SBATCH --partition=compute       # partition
#SBATCH -t 05:00:00   # time in hh:mm:ss

sbatch --dependency=$SLURM_JOB_ID $1 $2 $3

TEST_TOP=/oasis/scratch/comet/edisj/temp_project/benchmarking/datafiles/small_top.pdb
TEST_TRAJ=/oasis/scratch/comet/edisj/temp_project/benchmarking/datafiles/small_traj.h5md

testdir=/oasis/scratch/comet/edisj/temp_project/benchmarking/$SLURM_JOB_ID
mkdir -p $testdir
time cp $TEST_TOP $testdir
time cp $TEST_TRAJ $testdir
