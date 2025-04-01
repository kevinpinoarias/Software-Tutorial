#!/bin/bash
# Run in the standard partition (queue)
#SBATCH --partition=teaching
#
# Specify project account
#SBATCH --account=teaching
# No. of tasks required (max. of 16)
#SBATCH --ntasks=4 --nodes=1
#SBATCH --time=06:00:00
#SBATCH --job-name=pencen
#SBATCH --output=slurm-%j.out
module purge
module load gaussian/g16
/opt/software/scripts/job_prologue.sh
export GAUSS_SCRDIR=$SLURM_SUBMIT_DIR
g16 Molecule_pencen4cpu.gjf
/opt/software/scripts/job_epilogue.sh
