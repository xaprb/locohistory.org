#!/bin/sh

# TODO:
# gravematters.shmtml
# /albemarle/Slavery_at_UVA.shtml -> /albemarle/slavery-at-uva/
# add a "donate" which is a google form

# unwrap wordpress attachments
# :%s/\[!\[\([^\]]*\)\](\(http:\/\/www.locohistory.org[^)]*.jpg\))\](http:[^)]*) */\r\r![\1](\2)\r\r/gc
# rewrite images and their URLs to be local
# :bufdo %s/\(!\[[^\]]*\]\)(http:.*\(wp-content.uploads[^)]*)\)/\1(\/\2/g                                                           


# danger - some of these eat too much content.

cd ../content/blog
sed -i '' -e 's!<a href="\([^"]*\)".*>\(.*\)</a>![\2](\1)!g' *.md
#sed -i '' -e "s#<a href='\([^']*\)'.*>\(.*\)</a>#[\\2](\\1)#g" *.md
sed -i '' -e 's/&#8220;/"/g' *.md
sed -i '' -e 's/&#8221;/"/g' *.md
sed -i '' -e 's/&#8217;/'\''/g' *.md


sed -i '' -e 's!http://www.locohistory.org/blog/wp-content/uploads/!/media/!g' *.md
sed -i '' -e 's!http://www.locohistory.org/blog/albemarle/wp-content/uploads/!/media/!g' *.md
sed -i '' -e 's!http://www.locohistory.org/blog/amherst/wp-content/uploads/!/media/!g' *.md

blog $ sed -i '' -e 's!http://www.locohistory.org/blog/albemarle/!/!g' *.md
blog $ sed -i '' -e 's!http://www.locohistory.org/blog/amherst/!/!g' *.md

blog $ sed -i '' -e 's!http://www.locohistory.org/Albemarle/!/!g' *.md
blog $ sed -i '' -e 's!http://www.locohistory.org/Amherst/!/!g' *.md

blog $ sed -i '' -e 's!class="[^"]*"!!g' *.md
blog $ sed -i '' -e 's!title="[^"]*"!!g' *.md

blog $ sed -i '' -e 's!.thumbnail.jpg!.jpg!g' *.md


