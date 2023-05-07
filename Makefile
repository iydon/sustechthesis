LATEXMK = latexmk
SHELL  := /bin/bash

THESIS  = main
SLIDE  = slides

# make deletion work on Windows
ifdef SystemRoot
	RMRF = rd /s /q
	RM = del
	CP = copy
	SEP = \\
else
	RMRF = rm -rf
	RM = rm -f
	CP = cp
	SEP = /
endif

.PHONY: all
all: thesis

.PHONY: thesis
thesis:
	$(LATEXMK) -outdir=$(OUTDIR)/thesis -quiet -jobname=thesis $(THESIS)
	-@mkdir $(OUTDIR)$(SEP)artifact
	-@$(CP) $(OUTDIR)$(SEP)thesis$(SEP)thesis.pdf $(OUTDIR)$(SEP)artifact

.PHONY: slide
slides:
	$(LATEXMK) -outdir=$(OUTDIR)/slide -quiet -jobname=slide $(SLIDE)
	-@mkdir $(OUTDIR)$(SEP)artifact
	-@$(CP) $(OUTDIR)$(SEP)slides$(SEP)slides.pdf $(OUTDIR)$(SEP)artifact

.PHONY: clean
clean:
	-@$(RMRF) output

.PHONY: viewthesis
viewthesis: thesis
	$(LATEXMK) -outdir=$(OUTDIR)/thesis -jobname=thesis -pv $(THESIS)

viewslide: slide
	$(LATEXMK) -outdir=$(OUTDIR)/slide -jobname=slide -pv $(SLIDE)
