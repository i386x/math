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

MACROS := macros/constants.tex macros/document.tex macros/drawing.tex \
          macros/notes.tex macros/params.tex macros/pdf.tex macros/t1.tex \
          macros/utils.tex macros/cmaps/oml.cmap macros/cmaps/oms.cmap \
          macros/cmaps/omx.cmap macros/cmaps/ot1.cmap macros/cmaps/ot1tt.cmap \
          macros/cmaps/t1.cmap
ARTIFACTS := *.log *.tmp

ifeq ($(D),1)
    MACROS := $(MACROS) macros/debug.tex
endif

.PHONY: all clean

%.pdf: %.tex
	$(RM) $(<:.tex=.tmp)
	-$(PDFTEX) -draftmode $<
	-$(PDFTEX) -draftmode $<
	$(PDFTEX) $<
