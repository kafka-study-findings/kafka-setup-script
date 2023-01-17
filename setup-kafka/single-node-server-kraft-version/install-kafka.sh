#! /bin/bash

SCALA_VERSION=2.13
KAFKA_VERSION=3.3.1

KAFKA_EXTRACT_FOLDER="kafka_$SCALA_VERSION-$KAFKA_VERSION"

# Construct the url
URL="https://dlcdn.apache.org/kafka/3.3.1/$KAFKA_EXTRACT_FOLDER.tgz"
echo "Download kafka packaging file from url: $URL"

# Download the kafka package to local file system
wget $URL $KAFKA_EXTRACT_FOLDER.tgz 

# Extract the downloaded file
tar -xzvf $KAFKA_EXTRACT_FOLDER.tgz

# remove the .tgz file after extraction
rm $KAFKA_EXTRACT_FOLDER.tgz

# rename the the kafka directory to general name
mv $KAFKA_EXTRACT_FOLDER kafka_binary_package
echo "Completed installation of kafka"
