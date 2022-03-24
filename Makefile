all:
	export RSTUDIO_PANDOC="/usr/lib/rstudio/bin/quarto/bin";\
	Rscript -e 'rmarkdown::render_site(encoding = 'UTF-8')'
	git checkout master
	rm *.html *xml *.Rproj *.json *.xml *.css
	rm -rf posts/ site_libs/
	mv _site/* .
	rm -r _site/
