#!/bin/bash

mkdir -p /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/stripe32/results/$1/slurm_output
cd /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/stripe32/results/$1/slurm_output

sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/stripe32/scripts/1node.sh $1
#sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/stripe32/scripts/2node.sh $1
sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/stripe32/scripts/4node.sh $1
#sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/stripe32/scripts/6node.sh $1
sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/stripe32/scripts/8node.sh $1
#sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/stripe32/scripts/12node.sh $1
sbatch /oasis/projects/nsf/azs119/edisj/Comet/benchmarks/stripe32/scripts/16node.sh $1
