#!/bin/sh

cd ../content/blog
sed -i '' -e 's!<a href="\([^"]*\)".*>\(.*\)</a>![\2](\1)!g' *.md
#sed -i '' -e "s#<a href='\([^']*\)'.*>\(.*\)</a>#[\\2](\\1)#g" *.md
sed -i '' -e 's/&#8220;/"/g' *.md
sed -i '' -e 's/&#8221;/"/g' *.md
sed -i '' -e 's/&#8217;/'\''/g' *.md


