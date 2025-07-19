LATEXMK = latexmk
SHELL := /bin/bash

# English version
THESIS_EN = main_english
# Chinese version
THESIS_ZH = main
SLIDE = slides

# Enable file deletion on Windows
ifdef SystemRoot
	RM = del /Q
else
	RM = rm -f
endif

.PHONY: all clean cleanall thesis slide viewthesis viewslide FORCE_MAKE

# 编译目标
thesis: $(THESIS_ZH).pdf $(THESIS_EN).pdf

slide: $(SLIDE).pdf

all: thesis

# 编译中文版
$(THESIS_ZH).pdf: FORCE_MAKE
	$(LATEXMK) $(THESIS_ZH)

# 编译英文版
$(THESIS_EN).pdf: FORCE_MAKE
	$(LATEXMK) $(THESIS_EN)

$(SLIDE).pdf: FORCE_MAKE
	$(LATEXMK) $(SLIDE)

viewthesis: thesis
	$(LATEXMK) -pv $(THESIS_ZH)
	$(LATEXMK) -pv $(THESIS_EN)

viewslide: slide
	$(LATEXMK) -pv $(SLIDE)

clean:
	$(LATEXMK) -c $(THESIS_ZH)
	$(LATEXMK) -c $(THESIS_EN)
	$(LATEXMK) -c $(SLIDE)
	-@$(RM) -rf *~

cleanall: clean
	-@$(RM) $(THESIS_ZH).pdf
	-@$(RM) $(THESIS_EN).pdf
	-@$(RM) $(SLIDE).pdf
