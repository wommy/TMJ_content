#!/bin/bash
# new jekyll blogpost v0.2.0
## edit 9/30
## before: asked user for title, created new Y-M-D-$title.md w/ frontmatter
## now: asks for title, creates dir, creates in that 
### actually i want to create the dir myself, just want the frontmatter scripted

# ask user for title
read -p 'title?: ' title

# removed
### ADDED STEP
#
# mkdir w/ title & cd into it
# mkdir $title
# cd $title

## editing this one
## 
# create title_long variable for easier repitition
title_long=$(date +"%G-%V")'+'$title'.md'

# create post
touch $title_long

# add front_matter to post
echo '---' >> $title_long
echo 'time: '$(date " >> $title_long
echo 'title: "'$title'"' >> $title_long
echo 'date: '$(date "+%F %T %z") >> $title_long
echo '---' >> $title_long

