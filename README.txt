ClickStream Analytics:

This will capture the user history on the Website and provide insights,Recommendations and Sentimental News.
This will helps in the revenue of New Web Channels.
This will attract onBoard Clients and New Clients to Use this Tool.

INGESTION:
----------
STEP-1) 
FETCH THE DATA FROM FLUME TO HADOOP.
(USER_ID and URL).
cd $FLUME_HOME
bin/flume-ng agent --conf ./conf/ -f conf/flume-agent1.conf -Dflume.root.logger=DEBUG,console -n clickstream


TRANSFORMATION:
============

STEP-2)

/home/vm4learning/Desktop/Projects/Clickstream/Cook/shell/clickconversion.sh /flume/clickstream /user/vm4learning/shell_op /user/vm4learnin/pig_op

INGESTION,PREPROCESSING,EXPLORATION and EJECTING 

STEP-3)
PUSHING THE DATA FROM RDBMS TO HADOOP CLUSTER.
bin/oozie job -oozie http://localhost:11000/oozie -config /home/vm4learning/Code/oozie-clickstream-examples/apps/cs/job.properties -run



