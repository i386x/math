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

all: $(TARGETS)

clean:
	$(RM) *.log $(TARGETS)

notes.pdf: notes.tex ../../macros/notes.tex
