#!/bin/bash

# 设置目录
PROTO_DIR=./protofile
CPP_OUT=./src

# 编译.proto文件
protoc -I=$PROTO_DIR --cpp_out=$CPP_OUT $PROTO_DIR/addressbook.proto
