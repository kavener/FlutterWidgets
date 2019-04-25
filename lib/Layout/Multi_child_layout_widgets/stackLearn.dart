// stack

import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Stack")
      ),
      // 层叠式布局
      body: Stack(
        // 子Widgets们的对齐方式
        alignment: Alignment(1, 1),
        // 文本的方向，默认当然是 left-to-right
        textDirection: TextDirection.ltr,
        // fit 子Widgets的放置方式,默认loose
        fit: StackFit.loose,
        // 子Widgets溢出的处理方式
        overflow: Overflow.visible,
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 90,
            height: 90,
            color: Colors.green,
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
