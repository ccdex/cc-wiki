en: #en.US
	cd en_US;mkdocs build;cd ..

zh: #zh_CN
	cd zh_CN;mkdocs build;cd ..

all: en zh
	mkdocs build
	cp default/img/favicon.ico site/img
	cp default/img/favicon.ico en_US/site/img
	cp default/img/favicon.ico zh_CN/site/img
	mv en_US/site site/en_US
	mv zh_CN/site site/zh_CN
	find site/ -type f|xargs sed -i '/Built with <a href="http:\/\/www.mkdocs.org">MkDocs<\/a>/d'
	mv site ..

clean:
	rm site -rf
	rm en_US/site -rf
	rm zh_CN/site -rf
