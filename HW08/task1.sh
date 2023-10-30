#!/usr/bin/env bash
#SBATCH --job-name=HW08-task1
#SBATCH --partition=instruction
#SBATCH --time=0-00:10:00
#SBATCH --mem=20G
#SBATCH --nodes=1
#SBATCH --cpus-per-task=20
#SBATCH --output=HW08-task1.out
#SBATCH --error=HW08-task1.err

cd $SLURM_SUBMIT_DIR

for i in {1..20}
do
	echo "t = $i"
	./task1 1024 $i
	echo ""
done

