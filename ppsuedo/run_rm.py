#!/usr/bin/env python
# full info at end of file
from TE import *

"""Run RepeatModeler

RepeatModeler will produce consensus sequeces representing
clusters of denovo repeat sequences, partialy classified
by RepeatMasker
"""
#code_sequence_ids('P.gon.genome.v1.fasta',
                  #'names_translations',
                  #'coded_genome_assembly',
                  #'prefix_for_aliases')

genome = "P.seudo.v1.genome.fasta"
#can just put genome seq in instead of coded genome seq. 

print ("... running run_repeat_masker")
run_repeat_masker('P.seudo.v1.genome.fasta',
                  lib = 'consensi.fa.censor') 




