franck.pdf: franck.tex
	# Run 2 times for cross-reference
	pdflatex -job-name=$(basename $@) $<
	pdflatex -job-name=$(basename $@) $<

.PHONY: clean
clean:
	rm -f *.aux *.log *.out *.pdf
