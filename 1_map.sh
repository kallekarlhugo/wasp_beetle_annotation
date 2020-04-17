reference=wasp_final.fa
/data/programs/bwa-0.7.8/bwa index -a bwtsw $reference
for sample in `ls ./*R1.fastq.gz `
do
base=$(basename $sample "_R1.fastq.gz")
/data/programs/NextGenMap-0.5.0/bin/ngm-0.5.0/ngm -r "$reference" -1 ${base}_R1.fastq.gz -2 ${base}_R2.fastq.gz  -t 20 -p -b -o ${base}_${reference%.fasta}_NGM.bam
/data/programs/bwa-0.7.8/bwa mem -t 20  $reference ${base}_R1.fastq.gz ${base}_R2.fastq.gz | samtools sort - -o ${base}_${reference%.fasta}_bwa.bam 
done
