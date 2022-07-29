# protobuf-cpp

C++ program demo with protobuf on WIN or macOS

## Version

protobuf-cpp-3.17.3 -> protobuf-cpp-3.21.4

## macOS

* install protobuf : [build protobuf from source](https://github.com/protocolbuffers/protobuf/blob/main/src/README.md)
* install pkg-config : `brew install pkg-config`


## Other

* about pkg-config : [pkg-config](https://www.freedesktop.org/wiki/Software/pkg-config/)

## WIN

WIN Example Guide : [WIN Example Guide](https://github.com/zhang0xf/protobuf-cpp/blob/main/WIN.md)

## make

`make`

## run 

* `./read ./data/address.txt`
* `./write ./data/address.txt`

## vscode

vscode editor may show errors on *.pb.h, because vscode do not know where to find protobuf includes and libs.that's fine. make worked

## about dSYM floder on mac

-g flag to GCC will generate debug symbols. 

