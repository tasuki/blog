-include .env
export

build:
	bundle exec jekyll build

develop:
	bundle exec jekyll serve --drafts

deploy: build
	rsync -azvhP _site $$DST
