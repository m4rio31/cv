WORK_ROOT_NAME = cv_eng_Lamberti_work
SCIENCE_ROOT_NAME = cv_eng_Lamberti_science

WORK_SOURCE = $(WORK_ROOT_NAME).tex
WORK_OUTDVI = $(WORK_ROOT_NAME).dvi
WORK_OUTPDF = $(WORK_ROOT_NAME).pdf

SCIENCE_SOURCE = $(SCIENCE_ROOT_NAME).tex
SCIENCE_OUTDVI = $(SCIENCE_ROOT_NAME).dvi
SCIENCE_OUTPDF = $(SCIENCE_ROOT_NAME).pdf

FILE_CLEAN = *.aux *.blg *.log *.dvi \
		*.toc *.bbl *.out *.synctex.gz

PDFLATEX = pdflatex

.PHONY: work  science  clean

work: $(WORK_OUTPDF) clean

science: $(SCIENCE_OUTPDF) clean

$(WORK_OUTPDF): $(WORK_SOURCE)
				$(PDFLATEX) $(WORK_ROOT_NAME)

$(SCIENCE_OUTPDF): $(SCIENCE_SOURCE)
				$(PDFLATEX) $(SCIENCE_ROOT_NAME)

clean:
		rm -f $(FILE_CLEAN)