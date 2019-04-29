// padding  给子节点补白，即内填充操作

import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  @override
  final boxContainer = Container(
    color: Colors.blueAccent,
    height: 50,
    width: 50,
  );
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text('Padding')),
        body: new Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            width: 250,
            height: 350,
            // 构建一个盒子，在盒子里测试padding的属性
            child: new Column(
              children: <Widget>[
                Padding(
                  // 上下左右全部统一补白
                  padding: EdgeInsets.all(16),
                  child: boxContainer,
                ),
                Padding(
                    // 垂直和水平方向补白
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                    child: boxContainer
                ),
                Padding(
                    // 上、下、左、右 EdgeInsets.fromLTRB(double left, double top, double right, double bottom)
                    padding: EdgeInsets.fromLTRB(0, 30, 40, 50),
                    child: boxContainer
                ),
                Padding(
                    // 仅仅填充一个方向 比如left
                    padding: EdgeInsets.only(left: 50),
                    child: boxContainer
                )
              ]
            ),
        )
      )
    );
  }
}
