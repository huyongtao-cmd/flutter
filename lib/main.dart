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
    // final wordPair = new WordPair.random();
    // 本示例创建一个Material APP。Material是一种标准的移动端和web端的视觉设计语言。 Flutter提供了一套丰富的Material widgets。
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold( // Scaffold 是 Material library 中提供的一个widget, 它提供了默认的导航栏、标题和包含主屏幕widget树的body属性。widget树可以很复杂。
        // appBar: new AppBar(
        //   title: new Text('Welcome to Flutter'),
        // ),
        body: Center(
          child: Text(
            'Hello World,flutter的第一个组件，flutter一切皆组件，Material是一种标准的移动端和web端的视觉设计语言',
            textAlign: TextAlign.center, // 设置文本对齐方式
            maxLines: 2, // 设置最多显示的行数
            style: TextStyle( 
              fontSize: 25.0, // 字体大小为25.0
              color: Color.fromARGB(255, 255, 150, 150), // 颜色为粉红色
              decoration: TextDecoration.underline, // 有一个下划线
              decorationStyle: TextDecorationStyle.solid, // 实线
            ),
            ),
          // child: new Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}
