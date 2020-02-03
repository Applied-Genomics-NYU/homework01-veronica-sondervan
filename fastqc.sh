#!/bin/sh
#
#SBATCH --verbose
#SBATCH --job-name=FastQC
#SBATCH --output=FastQC.slurm_%j.out
#SBATCH --error=FastQC.slurm_%j.err
#SBATCH --time=01:00:00
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --mem=4GB

module load fastqc/0.11.8

fastqc cdg21c1_R1.fastq

