#!/bin/bash
#$ -pe def_slot 8
#$ -l s_vmem=8G
#$ -l mem_req=8G
#$ -l d_rt=12:00:00
#$ -l s_rt=12:00:00
#$ -l medium
#$ -M YOUR_EMAIL_ADDRESS@ac.jp
#$ -V
#$ -cwd
#$ -S /bin/bash


source ${HOME}/miniconda3/etc/profile.d/conda.sh
conda activate assembler
hifiasm_meta -o assembly/DRR267102_hifiasm_meta -t 8 data/DRR267102.sra.fastq
