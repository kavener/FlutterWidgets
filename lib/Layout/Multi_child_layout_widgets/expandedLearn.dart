// expand

import 'package:flutter/material.dart';

class ExpandedLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Expand')
      ),
      body: Row(children: <Widget>[
        // 根据 flex系数，分配剩余空间
        Expanded(
          flex:3,
          child: Text('1WithWEx')
        ),
        Expanded(
          flex: 1,
          child: Text('3WithEx')
        ),
      ],)
    );
  }
}