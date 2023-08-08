#
# File:    ./Makefile
# Author:  Jiří Kučera <sanczes AT gmail.com>
# Date:    2023-08-04 14:32:22 +0200
# Project: Math Notes
# Brief:   Build all the documents
#
# SPDX-License-Identifier: MIT
#

include ./common.mk

all clean:
	$(MAKE) -C notes/logic $@
