SOURCES=$(shell find . -name "*.Rmd")
TARGET=$(SOURCES:%.Rmd=%.pdf) 

all: $(TARGET)

%.pdf : %.Rmd
	Rscript -e 'rmarkdown::render("$<", output_format = "pdf_document")'

clean :
	rm -rf *.pdf *.aux *.log

clean_temp :
	rm -rf *.log *.tex *.aux *\#* .\#* *~

clean_log :
	rm -rf *.log *.tex *.aux
