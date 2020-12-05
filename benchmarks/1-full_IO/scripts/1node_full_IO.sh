#!/bin/bash

#SBATCH --nodes=1  # number of nodes
#SBATCH --ntasks-per-node=24  # number of cores
#SBATCH --partition=compute       # partition
#SBATCH -e slurm/slurm.%j.err # file to save job's STDERR (%j = JobId)
#SBATCH -o slurm/slurm.%j.out # file to save job's STDOUT (%j = JobId)
#SBATCH --export=ALL
#SBATCH -t 04:00:00   # time in hh:mm:ss
#SBATCH --mail-type=ALL # Send an e-mail when a job starts, stops, or fails
#SBATCH --mail-user=ejakupov@asu.edu # Mail-to address

#echo commands to stdout
set -x

cd $HOME
module unload mvapich2_ib/2.3.2
module load openmpi_ib/3.1.4
module load hdf5/1.10.3
source activate mda8

TEST_TOP=/oasis/projects/nsf/azs119/edisj/parallel_h5md/datafiles/YiiP_system.pdb
TEST_TRAJ=/oasis/projects/nsf/azs119/edisj/parallel_h5md/datafiles/YiiP_system_9ns_center100x.h5md

testdir=/oasis/scratch/comet/edisj/temp_project/benchmarking/$SLURM_JOB_ID
mkdir -p $testdir
cp $TEST_TOP $testdir
cp $TEST_TRAJ $testdir

cd /oasis/projects/nsf/azs119/edisj/parallel_h5md/scripts/Comet/rmsd/90Kframe/full_IO
export OMP_NUM_THREADS=1

for j in 1 2 3
do
    for i in 1 4 8 16 24
    do
        ibrun -np $i python full_IO_bench.py $testdir/YiiP_system.pdb $testdir/YiiP_system_9ns_center100x.h5md $1/1node_$j
    done
done

rm -r $testdir
