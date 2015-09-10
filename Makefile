all: html

html:
	@pandoc -f markdown_github -t html5 --self-contained -c style.css resume.md -o resume.html

clean:
	@rm -v *.html
