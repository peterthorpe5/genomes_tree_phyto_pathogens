cd /home/pt40963/scratch/phy_genomes/ppseu/Ppseu_P.capsici_20102017_brake1.9_complete

python /home/pt40963/public_scripts/Diamond_BLAST_add_taxonomic_info/Diamond_blast_to_taxid.py -i P.seudo.v1.gene.AA.fasta_vs_nr.tab -p /home/pt40963/scratch/blast_databases -o P.seudo.v1.gene.AA.fasta_vs_nr_tax.tab



python /home/pt40963/public_scripts/Diamond_BLAST_add_taxonomic_info/Diamond_blast_to_taxid.py -i P.seudo.v1.gene.AA.fasta_vs_nr.tab -p /home/pt40963/scratch/blast_databases -o P.seudo.v1.gene.AA.fasta_vs_nr_tax.tab

python /home/pt40963/public_scripts/Lateral_gene_transfer_prediction_tool/Lateral_gene_transfer_predictor.py -i *_vs_nr_tax.tab --tax_filter_out 4783 --tax_filter_up_to 33634 -p /home/pt40963/scratch/blast_databases -o LTG_results.out

python /home/pt40963/misc_python/BLAST_output_parsing/top_BLAST_hit_filter_out_tax_id.py -i *_vs_nr_tax.tab -t 4783 -p /home/pt40963/scratch/blast_databases -o top_not_phylum_4783.hits
python /home/pt40963/misc_python/BLAST_output_parsing/top_BLAST_hit_filter_out_tax_id.py -i *_vs_nr_tax.tab -t 4787 -p /home/pt40963/scratch/blast_databases -o top_not_species_tx_id_4787.hits

transrate --assembly P.seudo.v1.gene.nt.fasta --left /home/pt40963/scratch/pcbio/RNAseq/R1.fq.gz --right /home/pt40963/scratch/pcbio/RNAseq/R2.fq.gz
