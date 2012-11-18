---
layout: post
title: redhat上安装hadoop
tags:
- jekyll
---


redhat上安装hadoop
======================

####资源

	http://hadoop.apache.org/docs/r0.20.0/cn/

####单节点模式 


	[root@10.10.131.223 data]# hadoop-setup-single-node.sh 
	Welcome to Hadoop single node setup wizard

	Would you like to use default single node configuration? (y/n) y
	Would you like to format name node? (y/n) qlog_hadoop_10.10.131.223
	Would you like to setup default directory structure? (y/n) y
	Would you like to start up Hadoop? (y/n) y
	Would you like to start up Hadoop on reboot? (y/n) y

	Review your choices:

	Setup single node configuration    : y
	Format namenode                    : qlog_hadoop
	Setup default file system structure: y
	Start up Hadoop                    : y
	Start up Hadoop on reboot          : y

	

####创建用户

	[root@10.10.131.223 data]# hadoop-create-user.sh -u $USER
	User directory has been setup: /user/root
	sudo addgroup hadoop 
	sudo adduser --ingroup hadoop hduser

	redhat上
	groupadd hadoop
	adduser -g hadoop hduser
	adduser -g hadoop hdfs
	http://jaganesundar.wordpress.com/

####key

	ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa && cat ~/.ssh/id_rsa.pub | ssh root@10.10.131.224 "cat >> ~/.ssh/authorized_keys"

####多重节点设置
 
 	ps aux|grep java|awk '{print $2}'|xargs kill
 	ps aux|grep java|awk '{print $2}'|xargs kill
	qlog_node_=`ifconfig |grep "inet addr"|head -n 1|awk '{print $2}'|awk -F ':' '{print $2}'`
	qlog_node=`grep ${qlog_node_} /etc/hosts|awk '{print $2}'`
	echo ${qlog_node} ${qlog_node_}
	/usr/sbin/hadoop-setup-conf.sh --namenode-host=${qlog_node} --jobtracker-host=${qlog_node} --conf-dir=/etc/hadoop --hdfs-dir=/data/hadoop/hdfs --namenode-dir=/data/hadoop/hdfs/namenode --mapred-dir=/data/hadoop/mapred --datanode-dir=/data/hadoop/hdfs/data --log-dir=/var/log/hadoop --auto --mapreduce-user=mapred --dfs-support-append=true
	#退出重新登陆
	/usr/sbin/hadoop-setup-hdfs.sh --format
	/etc/init.d/hadoop-datanode start
	/etc/init.d/hadoop-namenode start
	/etc/init.d/hadoop-jobtracker start

	sudo /usr/sbin/hadoop-setup-conf.sh --namenode-url=hdfs://${namenode}:9000/ --jobtracker-url=${jobtracker}:9001 --conf-dir=/etc/hadoop --hdfs-dir=/data/hadoop/hdfs --namenode-dir=/data/hadoop/hdfs/namenode --mapred-dir=/data/hadoop/mapred --datanode-dir=/data/hadoop/hdfs/data --log-dir=/data/hadoop/log/hadoop --auto
