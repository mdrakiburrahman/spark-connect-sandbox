# Go demo project with Spark Connect

<!-- TOC -->

- [How this project was started](#how-this-project-was-started)

<!-- /TOC -->

## How this project was started

```bash
go mod init hello_world_project
go get github.com/apache/spark-connect-go/v34@master
go mod tidy

go get github.com/apache/spark-connect-go/v34@master
go get github.com/apache/spark-connect-go/v34/client/sql@v34.0.0-20240411000536-f7ad5188552c
```