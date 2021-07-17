# Example in Unix

* get source and unzip
```
tar zxf protobuf-cpp-3.17.3.tar.gz
rm protobuf-cpp-3.17.3.tar.gz -rf
```

* build and install protobuf
```
 ./configure
 make
 make check
 sudo make install
 sudo ldconfig # refresh shared library cache.
```
