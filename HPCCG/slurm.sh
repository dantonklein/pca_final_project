#!/bin/bash
#SBATCH --job-name=mantevo
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=danton.klein@ufl.edu
#SBATCH --account=eel6763
#SBATCH --qos=eel6763
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --ntasks-per-node=4
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=500mb
#SBATCH -t 00:05:00
#SBATCH -o Output
#SBATCH -e myerr
export OMP_NUM_THREADS=4
mpirun -np 4 ./test_HPCCG 50 50 50
