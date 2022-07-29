CXX = g++

WORKDIR = .

SRCS_DIR = $(WORKDIR)/src
PROTOS_DIR = $(WORKDIR)/proto
PB_DIR = $(WORKDIR)/protobuf
PB_SRCS = $(wildcard $(PB_DIR)/*.cc)
PB_NODIR_SRCS = $(notdir $(PB_SRCS))
CFLAGS = -Wall -g -std=c++11
CFLAGS_X = -Wall -Wextra -Werror -g -std=c++11

# protobuf need linking runtime libs, tool 'pkg-config' can tell the config.
export PROTOBUF_CONFIG = $(shell pkg-config --cflags --libs protobuf)

default: all

all: pb read write
	@echo "-- build finished"

generate_protobuf pb:
	@protoc -I=$(PROTOS_DIR) --cpp_out=$(PB_DIR) $(PROTOS_DIR)/addressbook.proto
	@echo "-- build protobuf"

read: $(SRCS_DIR)/read_message.cpp $(PB_SRCS)
	$(CXX) $(PROTOBUF_CONFIG) $(CFLAGS) $^ -o $@

write: $(SRCS_DIR)/write_message.cpp $(PB_SRCS)
	$(CXX) $(PROTOBUF_CONFIG) $(CFLAGS) $^ -o $@

.PHONY:clean
clean:
	