all: html

html:
	@pandoc -f markdown_github -t html5 --self-contained -c style.css resume.md -o resume.html

pdf: html
	@wkhtmltopdf resume.html resume.pdf

clean:
	@rm -v *.html *.pdf
