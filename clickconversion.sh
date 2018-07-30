
$HADOOP_HOME/bin/hadoop fs -rmr $2
$HADOOP_HOME/bin/hadoop fs -rmr $3

echo "Running Shell scrip to take Flume Output"
echo "Input:"$1
echo "Conversion output (TEXT KEY,VALUE)should be in :" $2
cd $HADOOP_HOME
bin/hadoop jar /home/vm4learning/Desktop/WordCount.jar mapred_brief.FormatConverterSequenceToTextDriver $1 $2

echo "PIG conversion in to Plan Value data:"
echo "Input :"$2
echo "Output :"$3
$PIG_HOME/bin/pig -param input=$2 -param output=$3 -f /home/vm4learning/Desktop/Projects/Clickstream/Cook/pig/clickpig.pig
