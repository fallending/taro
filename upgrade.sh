##!/bin/bash

echo 'At master branch???'

# Configuration

ORIGIN_OWNER_NAME='mergexxx'
ORIGIN_OWNER_REPO='https://github.com/NervJS/taro.git'


REMOVE_INFO=`git remote -v`
CURRENT_BRANCH=`git branch`

# Only once.

echo ${REMOVE_INFO} | grep -q ${ORIGIN_OWNER_NAME}

if [ $? -ne 0 ] ;then
	git remote add ${ORIGIN_OWNER_NAME} ${ORIGIN_OWNER_REPO}
fi

# Fetch

git fetch ${ORIGIN_OWNER_NAME}

# Merge

git merge ${ORIGIN_OWNER_NAME}/master

echo 'done!'