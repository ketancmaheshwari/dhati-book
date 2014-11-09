#!/bin/bash

# Guide:
# Just use ./lx.zsh to compile to PDF.
# Use +f to force a recompile.
# Modify DOC to change the relevant tex file.
# Modify TMP & BIB to use different temporary storage.
# Use "./lx.zsh clean" to clean up

# set -x

DEFAULTDOC="main"
COMPILER="pdflatex"

NEEDBIB="no"
MAKE_PS="no"
MAKE_PDF="no"
FORCE="no"

clean()
{
	rm -fv *.log *.out 
}

$COMPILER ${DEFAULTDOC}.tex

clean

