#!/bin/bash

#SBATCH --nodes=1  # number of nodes
#SBATCH --ntasks-per-node=1  # number of cores
#SBATCH --partition=compute       # partition
#SBATCH -t 05:00:00   # time in hh:mm:ss

sbatch --dependency=$SLURM_JOB_ID $1 $2 $3

TEST_TOP=/oasis/projects/nsf/azs119/edisj/Comet/datafiles/adk4AKE.psf
TEST_TRAJ=/oasis/projects/nsf/azs119/edisj/Comet/datafiles/xtc600x.h5md

testdir=/oasis/scratch/comet/edisj/temp_project/benchmarking/$SLURM_JOB_ID
mkdir -p $testdir
time cp $TEST_TOP $testdir
time cp $TEST_TRAJ $testdir
