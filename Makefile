TEX= $(wildcard *.tex)
JPG= $(wildcard jpg/*.jpg)
PNG= $(wildcard png/*.png)
TEXFIG= $(wildcard texfig/*.fig)
EPS= $(wildcard eps/*.eps)
#GIF= $(wildcard gif/*.gif)


JPG_C= $(JPG:jpg/%.jpg=jpg_c/%.eps)
PNG_C= $(PNG:png/%.png=png_c/%.eps)
TEXFIG_TEX= $(TEXFIG:texfig/%.fig=texfig_c/%.pstex_t)
TEXFIG_PS = $(TEXFIG:texfig/%.fig=texfig_c/%.pstex)
TEXFIG_PDF= $(TEXFIG:texfig/%.fig=texfig_c/%.pdf)
EPS_C= $(EPS:eps/%.eps=eps_c/%.pdf)
#GIF_C= $(GIF:gif/%.gif=gif_c/%.eps)
#GIF_C2 = $(GIF:gif/%.gif=gif_c/%.png)


.PHONY: all clean cleanall pdf pdf! A5 a5 A6 a6

pdf: prV.pdf

pdf!: cleanall pdf

A5: prV-A5.pdf

a5: A5

A6: prV-A6.pdf

a6: A6

all: prV.pdf prV-A5.pdf prV-A6.pdf


# Bilder-Konvertierung: jpg -> eps
jpg_c/%.eps: jpg/%.jpg
	@echo Konvertiere $< nach $@
	./scripts/jpeg2ps $< > $@

# Bilder-Konvertierung: png -> eps	
png_c/%.eps: png/%.png
	@echo Konvertiere $< nach $@
	convert $< $@

# Biler-Konvertierung: Combined LaTeX / PostScript (PDF)
texfig_c/%.pstex_t: texfig/%.fig
	@echo Konvertiere $< nach $@
	fig2dev -L pstex_t $< | ./scripts/modify_pstex_t.pl $< > $@
texfig_c/%.pstex: texfig/%.fig
	@echo Konvertiere $< nach $@
	fig2dev -L pstex $< > $@
texfig_c/%.pdf: texfig_c/%.pstex
	@echo Konvertiere $< nach $@
	GS_OPTIONS=-dAutoRotatePages=/None epstopdf --nocompress $< -o $@

# Bilder-Konvertierung: eps -> pdf
eps_c/%.pdf: eps/%.eps
	@echo Konvertiere $< nach $@
	epstopdf $< -o $@

# Bilder-Konvertierung: gif -> eps	
#gif_c/%.eps: gif/%.gif
#	@echo Konvertiere $< nach $@
#	convert $< $@

# Bilder-Konvertierung: gif -> png
#gif_c/%.png: gif/%.gif
#	@echo Konvertiere $< nach $@
#	convert $< $@


# pdf-Erzeugung mit pdflatex

prV.pdf: $(TEX) $(JPG) $(PNG) $(TEXFIG_TEX) $(TEXFIG_PDF) $(EPS_C) # $(GIF_C2)
	./scripts/update_link.pl presentation
	rm -f pr.pdf
	pdflatex pr.tex
	pdflatex pr.tex
	mv pr.pdf prV.pdf
	ln -s prV.pdf pr.pdf

prV-A5.pdf: $(TEX) $(JPG) $(PNG) $(TEXFIG_TEX) $(TEXFIG_PDF) $(EPS_C) # $(GIF_C2)
	./scripts/update_link.pl A5
	rm -f pr.pdf
	pdflatex pr.tex
	pdflatex pr.tex
	mv pr.pdf prV-A5.pdf
	ln -s prV-A5.pdf pr.pdf
# 	./scripts/update_link.pl handout
# 	rm -f pr.pdf
# 	pdflatex pr.tex
# 	pdflatex pr.tex
# 	pdfjam --scale 0.9 --suffix nup --frame true --landscape pr.pdf
# 	pdfjam --suffix 2 --nup '1x2' pr-nup.pdf
# 	mv pr-nup-2.pdf prV-A5.pdf
# 	rm pr.pdf pr-nup.pdf
# 	ln -s prV-A5.pdf pr.pdf

prV-A6.pdf: $(TEX) $(JPG) $(PNG) $(TEXFIG_TEX) $(TEXFIG_PDF) $(EPS_C) # $(GIF_C2)
	./scripts/update_link.pl A6
	rm -f pr.pdf
	pdflatex pr.tex
	pdflatex pr.tex
	mv pr.pdf prV-A6.pdf
	ln -s prV-A6.pdf pr.pdf
# 	./scripts/update_link.pl handout
# 	rm -f pr.pdf
# 	pdflatex pr.tex
# 	pdflatex pr.tex
# 	pdfjam --scale 0.9 --suffix nup --frame true --landscape pr.pdf
# 	pdfjam --suffix 2 --nup '2x2' --landscape pr-nup.pdf
# 	mv pr-nup-2.pdf prV-A6.pdf
# 	rm pr.pdf pr-nup.pdf
# 	ln -s prV-A6.pdf pr.pdf

# ps-Erzeugung mit pdflatex/pdftops

ps: prV-A6.ps

prV-A6.ps: prV-A6.pdf
	pdftops -paper A4 prV-A6.pdf pr.ps
	pstops '0@0.92(1.5cm,1.188cm)' pr.ps prV-A6.ps
	rm pr.ps


# Aufräumen

clean:
	rm -f *.vim *~ *.bak
	rm -f *.aux *.idx *.ind *.ilg *.log *.nav *.out *.snm *.toc pr.vrb
	rm -f *.dvi 

cleanall: clean
	rm -f pr.pdf prV.pdf prV-A5.pdf prV-A6.pdf prV-A6.ps
