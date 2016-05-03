.PHONY: clean cleanall

args = commandArgs(trailingOnly=TRUE)
pdf_file = args[1]

all: output_make_lattice.pdf

output_make_lattice.pdf: make_lattice.R
	Rscript --vanilla make_lattice.R

cleanall: clean
	rm output_make_lattice.pdf

###SUMMARY OF HOW THIS WORKS:
#TAKE "makemapsoutput.pdf: ..." for example...
#Left = output you care about; Right = files that are needed to compute output
#If you make an edit to anything right of colon, and you want to update the resulting output in an easy way, can just press make
#BASH will then re-run the script using the revised info so that output you care about will reflect those changes.
