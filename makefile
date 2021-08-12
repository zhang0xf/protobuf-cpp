# 指定编译器选项
CXX = g++
WORK_DIR = .
C_FLAG = -Wall -g -std=c++11 $(shell pkg-config --cflags protobuf)
LIBS = $(shell pkg-config --libs protobuf)
SRC_DIR = $(WORK_DIR)/code

# 构建多个目标
ALL:read write

read : $(SRC_DIR)/read_message.cpp $(SRC_DIR)/addressbook.pb.cc
	$(CXX) $(C_FLAG) $^ -o $@ $(LIBS) 

write : $(SRC_DIR)/write_message.cpp $(SRC_DIR)/addressbook.pb.cc
	$(CXX) $(C_FLAG) $^ -o $@ $(LIBS)

.PHONY:clean
clean:
	rm read write
