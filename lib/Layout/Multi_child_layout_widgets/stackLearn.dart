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

class StackEx extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Stack Example'),
      ),
      body: Stack(
        alignment: const Alignment(0.6, 0.6),
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('https://avatars1.githubusercontent.com/u/20992063?s=460&v=4'),
            radius: 100,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black45,
            ),
            child: Text(
              'RuoData',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ],
      )
    );
  }
}