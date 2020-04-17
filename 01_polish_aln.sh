#!/bin/bash
#to run run command followed by bamfile you want to polish with, i.e ./01_polish_aln.sh bamfile.bam
reference=wasp_final.fa
java -ea -Xmx200g -jar /cerberus/projects/kaltun/software/pilon-1.23.jar --genome $reference --frags $1 --threads 30 --outdir ${1%.bam}.PILON --tracks --vcf --changes --diploid --output ${1%.bam}.pilon.polish
