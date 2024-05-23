#!/bin/bash

timestamp=$(date +%Y-%m-%d_%H-%M-%S)


#SBATCH --job_name=
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=06:00:00
#SBATCH --output=output.out

output_dir_name="output/$1:$timestamp"
mkdir temp_out
mkdir "$output_dir_name"

module load R

Rscript "runtimes/$1_run.R"

mv temp_out/* "$output_dir_name"
rm -rf temp_out

mv *.out "$output_dir_name"

