// center 将子部件集中在自己内部的组建

import 'package:flutter/material.dart';

class CenterLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Center')
      ),
      body: new Center(
        // 高度设置为子元素宽度乘以该因子，必须大于或等于1.0
        // widthFactor: 6,
        //  高度设置为子元素高度乘以该因子，必须大于或等于1.0
        // heightFactor: 7,
        child: Container(
          color: Colors.blueAccent,
          width: 50,
          height: 50,
        ),
      ),
    );
  }
}
