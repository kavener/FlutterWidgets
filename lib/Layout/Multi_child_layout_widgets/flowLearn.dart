// Flow 难点

import 'package:flutter/material.dart';

class FlowLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Flow')
      ),
      // 根据[FlowDelegate]中的逻辑，有效地调整子组件的大小和位置的小部件
      body: Flow(
        delegate: FlowText(),
        children: <Widget>[
          Chip(
            label: Text('chip1'),
          )
        ],
      )
    );
  }
}

class FlowText extends FlowDelegate {
  @override
  // 怎么画？
  void paintChildren(FlowPaintingContext context) {
    // TODO: implement paintChildren
  }
  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate){
 
  }
}