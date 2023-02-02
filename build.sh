if (( $# != 1 )); then
	Rscript -e 'rmarkdown::render("src/equations.Rmd",output_file="../equations.html")'
	open equations.html
	exit 0
fi
Rscript -e 'rmarkdown::render("src/equations.Rmd",output_file="../equations.pdf", output_format="pdf_document")'
open equations.pdf
