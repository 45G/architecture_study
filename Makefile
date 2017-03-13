all:
	latex paper
	latex paper
	bibtex paper
	latex paper
	dvips -t letter -o paper.ps paper.dvi
	rm paper.log
	ps2pdf14 -sPAPERSIZE=letter paper.ps

ps:
	latex paper
	latex paper
	bibtex paper
	latex paper
	dvips -t letter -o paper.ps paper.dvi
	rm paper.log


clean:
	rm -f *~ *out *blg *bbl *aux *thm paper.ps paper.dvi 
