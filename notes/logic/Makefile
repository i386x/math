#
# File:    ./notes/logic/Makefile
# Author:  Jiří Kučera <sanczes AT gmail.com>
# Date:    2023-08-04 21:58:20 +0200
# Project: Math Notes
# Brief:   Build Math Notes from Mathematical Logic
#
# SPDX-License-Identifier: MIT
#

include ../../common.mk

TARGETS := notes.pdf
NOTES_DEPS := notes.tex ch01-intro.tex ch02-pcalc.tex ch03-folog.tex

all: $(TARGETS)

clean:
	$(RM) $(ARTIFACTS) $(TARGETS)

notes.pdf: $(NOTES_DEPS) $(addprefix ../../,$(MACROS))
