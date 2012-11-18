st login: Sun Nov 18 16:39:27 on ttys003
jiangmatoMacBook-Pro-2:_posts jiangyangyang$ gem install jekyll-tagging
ERROR:  While executing gem ... (Gem::FilePermissionError)
    You don't have write permissions into the /Library/Ruby/Gems/1.8 directory.
jiangmatoMacBook-Pro-2:_posts jiangyangyang$ 
jiangmatoMacBook-Pro-2:_posts jiangyangyang$ 
jiangmatoMacBook-Pro-2:_posts jiangyangyang$ 
jiangmatoMacBook-Pro-2:_posts jiangyangyang$ 
jiangmatoMacBook-Pro-2:_posts jiangyangyang$ gem install jekyll-tagging
ERROR:  While executing gem ... (Gem::FilePermissionError)
    You don't have write permissions into the /Library/Ruby/Gems/1.8 directory.
jiangmatoMacBook-Pro-2:_posts jiangyangyang$ sudo gem install jekyll-tagging
Password:
Successfully installed ruby-nuggets-0.8.9
Successfully installed jekyll-tagging-0.4.0
2 gems installed
Installing ri documentation for ruby-nuggets-0.8.9...
Installing ri documentation for jekyll-tagging-0.4.0...
Installing RDoc documentation for ruby-nuggets-0.8.9...
Installing RDoc documentation for jekyll-tagging-0.4.0...
jiangmatoMacBook-Pro-2:_posts jiangyangyang$ 
Last login: Sun Nov 18 18:08:44 on ttys000
jiangmatoMacBook-Pro-2:_posts jiangyangyang$ 
Last login: Sun Nov 18 18:09:04 on ttys000
jiangmatoMacBook-Pro-2:_posts jiangyangyang$ ls
2012-11-08-17-00-install-hadoop-on-redhat.md
jiangmatoMacBook-Pro-2:_posts jiangyangyang$ 
jiangmatoMacBook-Pro-2:_posts jiangyangyang$ pwd
/Users/jiangyangyang/Gitwork/zubinjiang.github.com/_posts
jiangmatoMacBook-Pro-2:_posts jiangyangyang$ ls
2012-11-08-17-00-install-hadoop-on-redhat.md
jiangmatoMacBook-Pro-2:_posts jiangyangyang$ cd ..
jiangmatoMacBook-Pro-2:zubinjiang.github.com jiangyangyang$ ls
CNAME       CNAME~      README.textile  _layouts    _posts      atom.xml    images      index.html~ random
CNAME.old   README.md   _config.yml _plugins    _site       css     index.html  push.sh     runserver.sh
jiangmatoMacBook-Pro-2:zubinjiang.github.com jiangyangyang$ 
jiangmatoMacBook-Pro-2:zubinjiang.github.com jiangyangyang$ cd ..
jiangmatoMacBook-Pro-2:Gitwork jiangyangyang$ ls
kathenotheism       newbeelab       php         python          yishenggudou.github.com zubinjiang.github.com
jiangmatoMacBook-Pro-2:Gitwork jiangyangyang$ cd yishenggudou.github.com/
jiangmatoMacBook-Pro-2:yishenggudou.github.com jiangyangyang$ ls
CNAME       README.textile  _layouts    _posts      atom.xml    images      push.sh     runserver.sh
CNAME.old   _config.yml _plugins    _site       css     index.html  random
jiangmatoMacBook-Pro-2:yishenggudou.github.com jiangyangyang$ cd _p
_plugins/ _posts/   
jiangmatoMacBook-Pro-2:yishenggudou.github.com jiangyangyang$ cd _posts/
jiangmatoMacBook-Pro-2:_posts jiangyangyang$ ls
2012-02-12-hello-git-blog-on-mac.md         2012-03-22-logging-split-with-date-python-script.md 2012-09-27-zeromq-python-教程.md
2012-02-12-ios-MKMapView-Class-translate.md     2012-03-26-16-42-django-large-file-upload.md        2012-09-28-zeromq-管道-模式-pipe.md
2012-02-12-tags-in-jekyll.md                2012-05-08-11-14-flash-fileupload-cross-site.md     2012-10-04-python-orc-识别-验证码.md
2012-02-13-ios-MKMapView-delegate.md            2012-05-23-10-00-underdcroe.js+on+object-c.md       2012-10-25-13-47-python-异步-编程-select-poll.md
2012-02-14-08-sed-find-and-replace.md           2012-05-23-11-00-Good-javascript-lib-for-project.md 2012-10-26-ipython-learn-cython.md
2012-02-16-html5-websocket-p2p.md           2012-05-24-Python单元测试框架.md            2012-10-26-zeromq-poll.md
2012-02-20-18-Twisted-learn-example.md          2012-09-21-14-10-js-worker-threadpool-js-线程池.md  2012-10-30-zeromq-settings.md
2012-02-20-fancybox-useage-note.md          2012-09-22-00-31-python-simple-event-listen-bind.md 2012-10-31-celery的安装使用.md
2012-02-23-facebook-scribe-install-useage.md        2012-09-25-能力低下.md                  2012-11-08-17-00-install-hadoop-on-redhat.md
2012-03-01-ios-core-data-beging.md          2012-09-26-js-继承-模式.md              README.md
2012-03-12-hand-log-with-munit-server.md        2012-09-27-12-03-python-加密解密算法.md         _site
2012-03-20-s3-wwith-python.md               2012-09-27-15-43-python-gevent-学习.md          index.html
jiangmatoMacBook-Pro-2:_posts jiangyangyang$ 
jiangmatoMacBook-Pro-2:_posts jiangyangyang$ vim 2012-11-08-17-00-install-hadoop-on-redhat.md

  1 ---
  2 layout: post
  3 title: redhat上安装hadoop
  4 tags:
  5 - jekyll
  6 ---
  7 
  8 
  9 redhat上安装hadoop
 10 ======================
 11 
 12 ####资源
 13 
 14     http://hadoop.apache.org/docs/r0.20.0/cn/
 15 
 16 ####单节点模式
 17 
 18 
 19     [root@10.10.131.223 data]# hadoop-setup-single-node.sh
 20     Welcome to Hadoop single node setup wizard
 21 
 22     Would you like to use default single node configuration? (y/n) y
 23     Would you like to format name node? (y/n) qlog_hadoop_10.10.131.223
 24     Would you like to setup default directory structure? (y/n) y
 25     Would you like to start up Hadoop? (y/n) y
 26     Would you like to start up Hadoop on reboot? (y/n) y
 27 
 28     Review your choices:
 29 
 30     Setup single node configuration    : y
 31     Format namenode                    : qlog_hadoop
 32     Setup default file system structure: y
 33     Start up Hadoop                    : y
 34     Start up Hadoop on reboot          : y
 35 
 36 
 37 
 38 ####创建用户
 39 
 40     [root@10.10.131.223 data]# hadoop-create-user.sh -u $USER
 41     User directory has been setup: /user/root
 42     sudo addgroup hadoop
 43     sudo adduser --ingroup hadoop hduser
 44 
 45     redhat上
 46     groupadd hadoop
"2012-11-08-17-00-install-hadoop-on-redhat.md" 69L, 2391C                                                                                                                   

