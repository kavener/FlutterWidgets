// IndexStack

import 'package:flutter/material.dart';

class IndexStackLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('IndexStack')
      ),
      // 指定显示其中一个child 默认为第一个
      body: IndexedStack(
        index: 2,
        alignment: Alignment(0, 0),
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            color: Colors.redAccent,
          ),
          Container(
            width: 90,
            height: 90,
            color: Colors.greenAccent,
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}