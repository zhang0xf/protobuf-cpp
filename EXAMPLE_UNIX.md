# Example in Unix

* get source and unzip
```
tar zxf protobuf-cpp-3.17.3.tar.gz
rm protobuf-cpp-3.17.3.tar.gz -rf
```

* build and install protobuf
```
cd protobuf-3.17.3
./configure
make
make check
sudo make install
sudo ldconfig # refresh shared library cache.
cd ..
```

* set PKG_CONFIG_PATH ( add the directory containing `protobuf.pc' )
```
export PKG_CONFIG_PATH=/home/zhangf/protobuf/protobuf-cpp/protobuf-3.17.3
pkg-config --cflags protobuf         # print compiler flags
pkg-config --libs protobuf           # print linker flags
```

* compile .proto files
```
chmod a+x proto_compiler.sh
./proto_compiler.sh
```

* compile example program
```
make clean 
make
```

* run program 'write' and 'read'
```
export LD_LIBRARY_PATH=/usr/local/lib [may need]
./write address.txt
./read
```
