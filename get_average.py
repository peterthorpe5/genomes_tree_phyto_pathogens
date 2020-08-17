from scipy import stats
from scipy.stats import mannwhitneyu
import matplotlib
import matplotlib.pyplot as plt
import pylab
import numpy

cov = []

infiles = """pboe.bam.cov  pgona.bam.cov  ppsue.bam.cov""".split()

for i in infiles:
    with open(i) as fh:
        for line in fh:
            scaff, poss, covergae = line.rstrip().split()
            cov.append(float(covergae))
    #print("file %s:" % i)
    #print("mean: ", numpy.mean(cov), "std", numpy.std(cov), "median", numpy.median(cov))
    print(("%s: mean: %.2f ,  std: %.2f, median: %.2f" ) % (i, numpy.mean(cov),numpy.std(cov), numpy.median(cov)))

