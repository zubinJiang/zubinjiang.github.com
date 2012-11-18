#!/bin/bash
#Author: timger <yishenggudou@gmail.com>
#weibo <http://t.sina.com/zhanghaibo>
#@yishenggudou http://twitter.com/yishenggudou
find . -name "*~"|xargs git rm --force
git add *
git commit -m 'post blog use shell script'
git push origin master

