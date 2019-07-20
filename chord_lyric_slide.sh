#!/bin/sh
rm -f *.sxd *.sbx
pdflatex chordbook.tex
songidx -l ko_KR.UTF-8 cbtitle.sxd cbtitle.sbx
songidx -l ko_KR.UTF-8 cbauth.sxd cbauth.sbx
songidx -l ko_KR.UTF-8 cbscrip.sxd cbscrip.sbx
pdflatex chordbook.tex
pdflatex lyricbook.tex
songidx -l ko_KR.UTF-8 lbtitle.sxd lbtitle.sbx
songidx -l ko_KR.UTF-8 lbauth.sxd lbauth.sbx
songidx -l ko_KR.UTF-8 lbscrip.sxd lbscrip.sbx
pdflatex lyricbook.tex
pdflatex slidebook.tex
rm -f *.sxc *.log *.out *.sxd *.aux *.sbx
open chordbook.pdf lyricbook.pdf slidebook.pdf&
#evince chordbook.pdf lyricbook.pdf slidebook.pdf&
