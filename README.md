# mas_oaid

Flutter plugin for mas oaid.

## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter development, view the
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## docs

[移动安全联盟集成文档](http://www.msa-alliance.cn/col.jsp?id=120)


1. 项目目录的build.gradle里添加：
```
allprojects {
    repositories {
        google()
        mavenCentral()
        flatDir {
            dirs project(':mas_oaid').file('libs')
        }
    }
}
```
2. 在./android/app/src/main/中建立assets放入在mas申请的证书和supplierconfig.json

3. 调用
```
    final _masOaidPlugin = MasOaid();
     await _masOaidPlugin.getOAID();
```
4. applicationId、证书的名子，证书的内容必须统一,即：
   1. 证书是为此项目申请的
   2. 项目的ID必须是证书的名子
    