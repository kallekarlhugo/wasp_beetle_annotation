# Wasp_beetle_annotation

Collaborative project to generate a polished genome and annotation for the parasitoid wasp *species*

This pipeline is based on the work previously done on *Colias eurytheme* where an optimized pipeline for genome annotation was developed Using a combination of Pilon, RED repeat masking, and Braker2.

## Workflow
* align read data from one sample sequenced to as high read depth as possible using NGM.
* Polish the genome using Pilon and the afforementioned sample.
* Align transcriptome to the newly polished genome
* Generate a protein set from the closest avalible speces.
* Mask repetitive regions using RED
* Run the braker2 pipeline with the proteinset and the Transcriptome data
* evaluate...
