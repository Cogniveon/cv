
build/CV.pdf:
	sed '/^[^%]*\\include{cover_letter}/ s/^/% /' index.tex > index_tmp.tex && mv index_tmp.tex index.tex
	sed '/^% *\\include{cv}/ s/^% *//' index.tex > index_tmp.tex && mv index_tmp.tex index.tex
	latexmk -pdf -f index.tex
	mv build/index.pdf build/CV.pdf

build/CVCL.pdf:
	sed '/^% *\\include{cover_letter}/ s/^% *//' index.tex > index_tmp.tex && mv index_tmp.tex index.tex
	sed '/^% *\\include{cv}/ s/^% *//' index.tex > index_tmp.tex && mv index_tmp.tex index.tex
	latexmk -pdf -f index.tex
	mv build/index.pdf build/CVCL.pdf

build/CL.pdf:
	sed '/^% *\\include{cover_letter}/ s/^% *//' index.tex > index_tmp.tex && mv index_tmp.tex index.tex
	sed '/^[^%]*\\include{cv}/ s/^/% /' index.tex > index_tmp.tex && mv index_tmp.tex index.tex
	latexmk -pdf -f index.tex
	mv build/index.pdf build/CL.pdf


.PHONY: clean
clean:
	@rm -rf ./build