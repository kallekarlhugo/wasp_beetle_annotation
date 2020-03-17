# first script in annotation pipeline
# align the one sample sequenced to the highest depth to the draft genome and later use that for polishing.
referece=reference_genome.fa
read1=read_fw.fq
read2=read_rw.fq
ngm -1 $read1 -2 $read2 -o sample1_reference.bam

#filter for and sort
samtools view -f ... -q ... -F ... sample1_reference.bam - | samtools sort - -o sample1_reference_fXqX.sorted.bam
samtools index sample1_reference_fXqX.sorted.bam
