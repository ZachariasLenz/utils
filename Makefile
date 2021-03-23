SHELL := bash
UTILS_DIR = $(HOME)/utils/utils

.PHONY: copy
# copy scripts to bin folder
copy: $(UTILS_DIR)/*
	for file in $(notdir $(^:%.sh=%)) ; do \
		ln -sfn $(UTILS_DIR)/$${file}.sh $(HOME)/.local/bin/$${file/_/-} ; \
	done
