# Makefile for django Organice themes
#

# variables
SHELL = /bin/bash

.PHONY: help assets bootstrap bumpver clean release setuptools

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  assets        to build all static assets (combined/minified CSS, JavaScript, etc.)"
	@echo "  bootstrap     to update Sass, Compass, UglifyJS, and bootstrap-sass on your (Ubuntu) system"
	@echo "  bumpver       to bump the version number, commit and tag for releasing"
	@echo "  clean         to remove build files and folders"
	@echo "  release       to package a new release, and upload it to pypi.org"
	@echo "  setuptools    to install setuptools or repair a broken pip installation"

assets: #bootstrap
	@echo "Building assets..."
	cd */static && compass clean && compass compile
	cd */static/js && \
	BOOTSTRAP_JS_DIR=$(shell find $(shell gem environment gemdir)/gems/ \
		-name bootstrap-sass-*)/vendor/assets/javascripts/bootstrap/ && \
	uglifyjs -o scripts.js \
		{jquery,profile}.js \
		$$BOOTSTRAP_JS_DIR/{affix,alert,carousel,dropdown,scrollspy}.js

bootstrap:
	@echo "Updating your system-wide bootstrap-sass installation... (may require your password)"
	gem list &> /dev/null || sudo apt-get install -y ruby
	yes | sudo gem uninstall sass compass bootstrap-sass
	sudo gem install compass bootstrap-sass --no-rdoc --no-ri
	@gem list
	@echo
	@echo "Updating uglify-js v2 for Bootstrap JavaScript minification... (may require your password)"
	npm list &> /dev/null || sudo apt-get install -y npm
	sudo npm uninstall -g uglify-js
	sudo npm install -g uglify-js

bumpver:
	@echo "Not implemented yet. Install pypi package instead: \`pip install bumpversion'"

clean:
	rm -rf build/ dist/ *.egg-info/ */static/.sass-cache

release: setuptools clean
	python setup.py sdist upload

setuptools:
	python -c 'import setuptools' || \
	curl -s -S https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py | python
	rm -f setuptools-*.zip
