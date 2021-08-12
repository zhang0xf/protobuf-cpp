# Example in WIN

## Get protoc:

* download the release for win `protoc-3.17.3-win32.zip`.
* use nmake or visual studio build protobuf from source.

NOTICE : the first way can not get the `include` and `lib`.

## Build protobuf:

* unzip source code `protobuf-cpp-3.17.3.tar.gz` or git clone. 
* follow the instructions：[Use Cmake to build protobuf with MSVC on Windows](https://github.com/protocolbuffers/protobuf/blob/master/cmake/README.md).
* after `nmake install`, we can find `install` floder.

## Set visual studio project

* 项目属性 -> C/C++ -> 常规 -> 附加包含目录
* 项目属性 -> 链接器 -> 常规 -> 附加库目录
* 项目属性 -> 链接器 -> 输入 -> 附加依赖项
* 项目属性 -> c/c++ -> 代码生成 -> 运行库【 Optional 】: `MTd` or `MDd`
* 项目属性 -> 调试 -> 命令参数

## Reference

[cmake.md](https://github.com/protocolbuffers/protobuf/blob/master/cmake/README.md)

## Protobuf with cmake

[using cmake generate visual studio project with protobuf](https://github.com/zhang0xf/ryzom-server)
