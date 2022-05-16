LATEXMK = latexmk
SHELL  := /bin/bash

THESIS  = main
SLIDE  = slides

# make deletion work on Windows
ifdef SystemRoot
	RM = del /Q
else
	RM = rm -f
endif

.PHONY: all clean cleanall thesis slide viewthesis viewslide FORCE_MAKE

thesis: $(THESIS).pdf
slide: $(SLIDE).pdf

all: thesis

$(THESIS).pdf: FORCE_MAKE
	$(LATEXMK) $(THESIS)

$(SLIDE).pdf: FORCE_MAKE
	$(LATEXMK) $(SLIDE)

viewthesis: thesis
	$(LATEXMK) -pv $(THESIS)

viewslide: slide
	$(LATEXMK) -pv $(SLIDE)

clean:
	$(LATEXMK) -c $(THESIS)
	$(LATEXMK) -c $(SLIDE)
	-@$(RM) -rf *~

cleanall: clean
	-@$(RM) $(THESIS).pdf
	-@$(RM) $(SLIDE).pdf
