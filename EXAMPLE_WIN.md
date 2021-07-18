# Example in WIN

## there are two way to get protoc compiler:
* download the release for win `protoc-3.17.3-win32.zip`.
* use nmake build "protoc.exe" from source code.

NOTICE : the first way can not get the "include" and "lib" for our visual studio project, we can copy from "/usr/local/include" and "/usr/local/lib" where we build from source code and make install in linux.

## I use the second way decribed above:

* unzip source code `protobuf-cpp-3.17.3.tar.gz` or git clone. 
* follow the instructions：[Use Cmake to build protobuf with MSVC on Windows](https://github.com/protocolbuffers/protobuf/blob/master/cmake/README.md).
* after "nmake install", we can find "install" floder which parallel to the source code directory.

## set visual studio project with "install" floder

* 项目属性 -> c/c++ -> 常规 -> 附加包含目录
![image_text](https://github.com/zhang0xf/protobuf-cpp/blob/main/image/Headers_Include.PNG)

* 项目属性 -> 链接器 -> 常规 -> 附加库目录
![image_text](https://github.com/zhang0xf/protobuf-cpp/blob/main/image/Lib_Include.PNG)

* 项目属性 -> 链接器 -> 输入 -> 附加依赖项
![image_text](https://github.com/zhang0xf/protobuf-cpp/blob/main/image/Lib_Name.PNG)

* 项目属性 -> c/c++ -> 代码生成 -> 运行库[optional]
![image_text](https://github.com/zhang0xf/protobuf-cpp/blob/main/image/Compiler_Error_Solution.PNG)
if not, may has error：`error LNK2038: 检测到“RuntimeLibrary”的不匹配项: 值“MTd_StaticDebug”不匹配值“MDd_DynamicDebug”(addressbook.pb.obj 中)`

* 项目属性 -> 调试 -> 命令参数
![image_text](https://github.com/zhang0xf/protobuf-cpp/blob/main/image/ArgsSetting_For_Main.PNG)

## Reference

[Cmake.md](https://github.com/protocolbuffers/protobuf/blob/master/cmake/README.md)
