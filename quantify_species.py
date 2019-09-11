#!/usr/bin/env python

########################################################################################################
#####: TITLE: Get the top blast hit from tab file. Get Kingdom hits. Taxonmy filter  ###############


"""
script to return  the top blast hit from tab file (via two methods: One the assuming order in the blast output
and 2) explicitly looking for the hit with the greatest bit score). The distribution of the kingdom
for the top hits is also returned in a file. 

#to do taxonomy filter. The code is there, just need to implement this as an option in the main function 
"""
#author: Peter Thorpe September 2015. The James Hutton Insitute, Dundee, UK.

#biopython imports

import time
#os imports
import os
from sys import stdin,argv
import sys
from optparse import OptionParser
from collections import defaultdict
import collections


def test_line(line):
    """returns true lines. Not comments or blank line"""
    if not line.strip():
        return False  # if the last line is blank
    if line.startswith("#"):
        return False  # comment line
    if line.startswith("    # "):  # swarm result file
        return False  # comment line
    if line.startswith("		p"):
        return False  # comment line
    return line.rstrip()

def split(line):
    """take in line, split at tab returns species name"""
    data = line.split("\t")
    name = data[1]
    species = name.split(".1")[1]
    return species


def parse_blast_tab_file(in_file, bit_score_column, outfile):
    """this is a function to open up a tab file blast results, and
    produce the percentage of kingdom blast hit based on the top
    blast match"""
    f_in = open(in_file, "r")
    species_counter = defaultdict(int)
    for line in f_in:
        if line:
            species = split(line)
            species_counter[species] +=1
    return species_counter
            





#####################################################################################################
start_time=time.time()
###################################################################################################


if "-v" in sys.argv or "--version" in sys.argv:
    print "v0.0.2"
    sys.exit(0)


usage = """Use as follows:

$ python top_BLAST_hit.py -i in.tab -b bit_score coloumn -o out_file 



"""

parser = OptionParser(usage=usage)


parser.add_option("-i", "", dest="in_file", default=None,
                  help="in file")
parser.add_option("-b", "--bit_score", dest="bit_score_column", default="12",
                  help="bit_score_column")

parser.add_option("-o", "--output", dest="out_file", default=None,
                  help="Output filename",
                  metavar="FILE")


(options, args) = parser.parse_args()

in_file = options.in_file
bit_score_column = options.bit_score_column
outfile = options.out_file


#if len(args) < 1:
    #stop_err("Expects no argument, one input filename")



#get_top_blast_hit(in_file, bit_score_column, outfile)

species_counter = parse_blast_tab_file(in_file, bit_score_column, outfile)
for key in sorted(species_counter):
    print "%s:\t%s" % (key, species_counter[key])


end_time=time.time()
#print 'that took, %.3f' %(end_time - start_time)

#print 'done'
