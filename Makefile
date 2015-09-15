all: pdf

html:
	@pandoc -f markdown -t html5 --self-contained -c style.css resume.md -o resume.html

pdf: html
	@wkhtmltopdf resume.html resume.pdf

clean:
	@rm -v *.html *.pdf
