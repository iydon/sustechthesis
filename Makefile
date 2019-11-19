THESIS = sustechthesis


cls:
	xetex $(THESIS).dtx

doc:
	latexmk -xelatex $(THESIS).dtx

clean:
	latexmk -c
