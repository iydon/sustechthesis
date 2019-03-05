filename := "main"
temp := "temp"

all:
    @xelatex ${filename}
    @bibtex  ${filename}
    @xelatex ${filename}
    @xelatex ${filename}

clean:
    @rm -f *.aux \
           *.bbl \
           *.blg \
           *.lof \
           *.log \
           *.lot \
           *.out \
           *.toc \
