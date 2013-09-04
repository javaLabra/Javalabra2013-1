#!/bin/bash

IFS=$'\n'

rm -rf palautukset
mkdir palautukset
cd palautukset

for repo in $(cat ../repos)
do
	eval "/usr/bin/git clone $repo"
done

cd ..

unset IFS
