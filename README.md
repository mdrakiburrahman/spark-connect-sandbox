# Spark Connect Sandbox

Sandbox repo for experimenting with Spark Connect with every language possible.

## Starting Spark Connect Server

Start Spark Connect in the background:

```bash
sudo nohup /opt/spark/sbin/start-connect-server.sh --packages org.apache.spark:spark-connect_2.12:3.4.0 &
```

View output:

``` bash
sudo cat nohup.out
```

Should see something like this:

```text
starting org.apache.spark.sql.connect.service.SparkConnectServer, logging to /opt/spark/logs/spark-root-org.apache.spark.sql.connect.service.SparkConnectServer-1-51a5cffdbda3.out
```

Verify the Spark Connect logs:

```bash
cat /opt/spark/logs/spark-root-org.apache.spark.sql.connect.service.SparkConnectServer-1-51a5cffdbda3.out
```

Should see something like this:

```text
...
24/04/14 16:26:51 INFO SparkConnectServer: Starting Spark session.
24/04/14 16:26:51 INFO SparkContext: Running Spark version 3.4.2
24/04/14 16:26:51 INFO ResourceUtils: ==============================================================
24/04/14 16:26:51 INFO ResourceUtils: No custom resources configured for spark.driver.
24/04/14 16:26:51 INFO ResourceUtils: ==============================================================
24/04/14 16:26:51 INFO SparkContext: Submitted application: Spark Connect server
...
24/04/14 16:26:52 INFO SparkConnectServer: Spark Connect server started.
```

Stop Spark Connect:

```bash
sudo /opt/spark/sbin/stop-connect-server.sh
```