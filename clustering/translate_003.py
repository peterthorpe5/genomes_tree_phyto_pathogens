
from Bio.Seq import Seq
from Bio.Alphabet import generic_dna
from Bio import SeqIO
import time
from Bio.Seq import Seq
from Bio.Alphabet import IUPAC
from Bio import SeqIO
import os
from sys import stdin,argv
import sys
from optparse import OptionParser


def open_seq(sequences, outfile):
    f= open (outfile,'w')
    count = 0
    for seq_record in SeqIO.parse(sequences, "fasta"):
        #print >> f, '>',seq_record.id
        #print repr(seq_record.seq)
        #print len(seq_record)
        coding_dna = seq_record.seq
        protien = coding_dna.translate()
        print >> f, '>%s\n%s' % (seq_record.id, protien)
        #SeqIO.write(coding_dna.translate(), f, "fasta")
        count =+1
    print count




if "-v" in sys.argv or "--version" in sys.argv:
    print "v0.0.1"
    sys.exit(0)


usage = ""
parser = OptionParser(usage=usage)

parser.add_option("-f", dest="infile", default=None,
                  help="directory of the files you are wanting to go through")
parser.add_option("-o", "--out", dest="out", default="ed.fasta",
                  help="Output filename",
                  metavar="FILE")




(options, args) = parser.parse_args()

infile = options.infile
out = options.out

open_seq(infile, out)
