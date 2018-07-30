cd $HADOOP_HOME
bin/hadoop fs -text $1/* > conversions.txt 
bin/hadoop fs -put conversions.txt $2/conversions.txt
rm -r conversions.txt
