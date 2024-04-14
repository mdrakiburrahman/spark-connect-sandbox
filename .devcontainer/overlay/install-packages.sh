#!/usr/bin/env -S bash -e

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    software-properties-common \
    vim \
    wget \
    openjdk-8-jdk

# Spark Connect compatible version
#
SPARK_VERSION='3.4.2'
echo "Installing Apache Spark '$SPARK_VERSION' (for local 'spark-submit', identical to Azure Synapse runtime)"
wget https://archive.apache.org/dist/spark/spark-$SPARK_VERSION/spark-$SPARK_VERSION-bin-hadoop3.tgz &&
    tar -xvf spark-$SPARK_VERSION-bin-hadoop3.tgz &&
    mkdir -p /opt/spark &&
    mv spark-$SPARK_VERSION-bin-hadoop3/* /opt/spark &&
    rm -rf spark-$SPARK_VERSION-bin-hadoop3.tgz &&
    rm -rf spark-$SPARK_VERSION-bin-hadoop3

sudo apt-get autoremove -y &&
    sudo apt-get clean -y &&
    sudo rm -rf /var/lib/apt/lists/* &&
    sudo rm -rf /tmp/downloads
