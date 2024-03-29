#!/bin/sh

read -p "Project name: " project

if [ -z "$project" ]
then
	echo "Project name is required."
	exit
fi

git clone https://github.com/XiMatriarx/radix.git --depth 1 --branch 'v1.0.0'
mv radix $project
cd $project
rm -Rf .git
rm -Rf bin
