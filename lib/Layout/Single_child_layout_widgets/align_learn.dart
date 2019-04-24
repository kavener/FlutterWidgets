// align

import 'package:flutter/material.dart';

class AlignLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Align')
      ),
      // 对齐小部件
      body: Align(
          // Alignment(0.0,0.0)表示矩形的中心。从-1.0到+1.0的距离是矩形的一边到另一边的距离。
          // alignment: Alignment(1, 0),
          // FractionalOffset(1, 1) 类似Alignment() 但是坐标起点是左上角，且范围为0~1 比如 FractionalOffset(0.5, 0.5) 代表中间位置
          alignment: FractionalOffset(0.5, 0.5),
          child: Container(
            color: Colors.blueAccent,
            width: 100,
            height: 100,
          ),
      ),
    );
  }
}