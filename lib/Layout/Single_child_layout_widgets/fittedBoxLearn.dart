// fittedBox
import 'package:flutter/material.dart';

class FittedBoxLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('FittedBox'),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 400,
            decoration: BoxDecoration(
              border: Border.all(), 
              
              ),
            // 根据内部child伸缩填充父容器
            child: FittedBox(
              // 填充方式 比如contain 尽可能大，同时仍然将源完全包含在目标框中。  还有cover、fill、fitWidth、fitHeight等方式
              fit: BoxFit.contain,
              // 对齐方式
              alignment: Alignment(0, 0),
              child: Container(
                color: Colors.blueAccent,
                width: 30,
                height: 30,
              )
              
            ),
          ),
        ));
  }
}
