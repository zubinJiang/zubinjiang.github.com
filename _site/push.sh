#!/bin/bash
#Author: timger <zubin.jiang@gmail.com>
#weibo <http://t.sina.com/yangpage>
find . -name "*~"|xargs git rm --force
git add *
git commit -m 'post blog use shell script'
git push origin master