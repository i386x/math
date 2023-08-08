#
# File:    ./common.mk
# Author:  Jiří Kučera <sanczes AT gmail.com>
# Date:    2023-08-04 23:11:51 +0200
# Project: Math Notes
# Brief:   Rules and variables common to all Makefiles
#
# SPDX-License-Identifier: MIT
#

RM = rm -f
PDFTEX = pdftex -8bit -halt-on-error
export TEXINPUTS = .:../..:

.PHONY: all clean

%.pdf: %.tex
	$(PDFTEX) $<
