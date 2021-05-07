LATEXMK = latexmk
SHELL  := /bin/bash

THESIS  = main

# make deletion work on Windows
ifdef SystemRoot
	RM = del /Q
else
	RM = rm -f
endif

.PHONY: all clean cleanall thesis viewthesis FORCE_MAKE

thesis: $(THESIS).pdf

all: thesis

$(THESIS).pdf: FORCE_MAKE
	$(LATEXMK) $(THESIS)

viewthesis: thesis
	$(LATEXMK) -pv $(THESIS)

clean:
	$(LATEXMK) -c $(THESIS)
	-@$(RM) -rf *~

cleanall: clean
	-@$(RM) $(THESIS).pdf
