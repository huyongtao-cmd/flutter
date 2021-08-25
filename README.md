# startup_namer

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### 代码示例：
```
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp()); // main函数使用了(=>)符号, 这是Dart中单行函数或方法的简写。
/*
本示例中的body的widget树中包含了一个Center widget, Center widget又包含一个 Text 子widget。 Center widget可以将其子widget树对其到屏幕中心。
 */
// widget的主要工作是提供一个build()方法来描述如何根据其他较低级别的widget来显示自己。
class MyApp extends StatelessWidget { //该应用程序继承了 StatelessWidget，这将会使应用本身也成为一个widget。 在Flutter中，大多数东西都是widget(小部件)，包括对齐(alignment)、填充(padding)和布局(layout)
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    // 本示例创建一个Material APP。Material是一种标准的移动端和web端的视觉设计语言。 Flutter提供了一套丰富的Material widgets。
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold( // Scaffold 是 Material library 中提供的一个widget, 它提供了默认的导航栏、标题和包含主屏幕widget树的body属性。widget树可以很复杂。
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
          // child: new Text('Hello World'),
          child: new Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}

```