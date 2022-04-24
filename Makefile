all:
	export RSTUDIO_PANDOC="/usr/lib/rstudio/bin/quarto/bin";\
	Rscript -e 'rmarkdown::render_site(encoding = 'UTF-8')'
	cp google1e64cc701f845ec1.html docs/

upload:
	export RSTUDIO_PANDOC="/usr/lib/rstudio/bin/quarto/bin";\
	Rscript -e 'rmarkdown::render_site(encoding = 'UTF-8')'
	git checkout master
	rm -rf posts/ site_libs/
	mv _site/* .
	rm -r _site/
	git add --all
	git commit -m "Upload"
	git push --all
	git checkout source

