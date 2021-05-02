-include .env
export

develop:
	bundle exec jekyll serve --drafts

build:
	bundle exec jekyll build

deploy: build
	rsync -azvhP _site $$DST
