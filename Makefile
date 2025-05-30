-include .env
export

build: bundle-install
	bundle exec jekyll build

develop: bundle-install
	bundle exec jekyll serve --drafts

bundle-install:
	ruby --version
	bundle config set --local path 'vendor/bundle'
	bundle install
