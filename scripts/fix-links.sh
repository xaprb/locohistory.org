#!/bin/sh

cd ../content/blog
sed -i '' -e 's!<a href="\([^"]*\)".*>\(.*\)</a>![\2](\1)!g' *.md
sed -i '' -e "s#<a href='\([^']*\)'.*>\(.*\)</a>#[\\2](\\1)#g" *.md


