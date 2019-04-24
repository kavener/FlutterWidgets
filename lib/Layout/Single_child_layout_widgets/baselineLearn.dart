// Baseline

import 'package:flutter/material.dart';

class BaselineLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Baseline')
      ),
      // 根据子元素的基线定位子元素的小部件，即使得不同的组件都处在规定的基线位置
      body: new Row(
        children: <Widget>[
          Baseline(
            baseline: 50,
            // 对齐的对象类型
            baselineType: TextBaseline.alphabetic,
            child: Text('hello', 
              style: TextStyle(
                fontSize: 20,
              ),
            )
          ),
          Baseline(
            baseline: 50,
            baselineType: TextBaseline.alphabetic,
            child: Text('world',
              style: TextStyle(fontSize: 40),
            )
          ),
        ],
      )
    );
  }
}