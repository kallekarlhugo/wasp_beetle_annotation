#!/bin/bash
PATH=/data/programs/bbmap_37.90:/data/programs/augustus-3.2.1/bin:/data/programs/augustus-3.2.1/scripts:$PATH
AUGUSTUS_CONFIG_PATH=/data/programs/augustus-3.2.1/config
genome=/cerberus/projects/kaltun/Hamback/wasp_final.fa
library=/data/programs/busco-master/insecta_odb9
outfile=wasp_final.busco
python3 /data/programs/busco_v.3.1/scripts/run_BUSCO.py -i $genome -l $library -m genome -o $outfile -c 20

#note
