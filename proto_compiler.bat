cd ./install/bin

set PROTO_DIR=../../protofile
set CPP_OUT=../../src

protoc.exe -I=%PROTO_DIR% --cpp_out=%CPP_OUT% %PROTO_DIR%/addressbook.proto

pause