#!/bin/bash

set -e

DEPLOY_REPO="https://${DEPLOY_BLOG_TOKEN}@github.com/gohugoid/gohugoid.github.io.git"

function main {
	clean
	get_current_site
	build_site
    deploy
}

function clean { 
	echo "cleaning public folder"
	if [ -d "public" ]; then rm -rf public; fi 
}

function get_current_site { 
	echo "getting latest site"
	git clone --depth 1 $DEPLOY_REPO public 
}

function build_site { 
	echo "building site..."
	hugo --config config.production.toml
}

function deploy {
	echo "deploying changes"

	if [ -z "$TRAVIS_PULL_REQUEST" ]; then
	    echo "except don't publish site for pull requests"
	    exit 0
	fi  

	if [ "$TRAVIS_BRANCH" != "master" ]; then
	    echo "except we should only publish the master branch. stopping here"
	    exit 0
	fi

	cd public
	git config --global user.name "Travis CI"
    git config --global user.email ardianta_pargo@yahoo.co.id
	git add -A
	git status
	git commit -m "Travis build $TRAVIS_BUILD_NUMBER auto-pushed to github"
	git push $DEPLOY_REPO master:master
}


main