::need protoc.exe

::设置目录
set PROTO_DIR=./proto
set CPP_OUT=../src

::编译.proto文件
protoc.exe -I=%PROTO_DIR% --cpp_out=%CPP_OUT% %PROTO_DIR%/addressbook.proto

pause