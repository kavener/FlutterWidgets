//  AspectRatio

import 'package:flutter/material.dart';

class AspectRatioLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('AspectRatio')
      ),
      body: Center(
        child: Container(
          width: 300,
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          // 创建具有特定长宽比的小部件。
          child: AspectRatio(
            // 一个比例为 18:9 的“全面屏”比例
            aspectRatio: 9.0/18.0,
            child: Container(
              color: Colors.blueAccent,
            )
          ),
      ),
      )
    );
  }
}