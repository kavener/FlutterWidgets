// row

import 'package:flutter/material.dart';

class RowLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Row')
      ),
      // 水平显示一堆组件，不能滚动
      body: Row(
        // 在flex布局中，子元素应该如何沿着主轴放置,即各个组件的放置的方式， 比如MainAxisAlignment.start 组件都尽量靠近主轴起点，
        // 而起点的方向取决去textDirection: TextDirection.rtl,比如right-to-left即都从右边开始
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // 主轴应该占用多少空间 max 即占用最大 min则相反
        mainAxisSize: MainAxisSize.max,
        // 交叉轴的布局方式
        crossAxisAlignment: CrossAxisAlignment.start,
        // 组件开始方向 ltr:left-to-right
        textDirection: TextDirection.ltr,
        // 定义了children摆放顺序，默认是down
        verticalDirection: VerticalDirection.down,
        // 对齐文本的水平线
        textBaseline: TextBaseline.alphabetic,
        children: <Widget>[
          Icon(Icons.access_alarm),
          Icon(Icons.access_alarms),
          Icon(Icons.access_time)
        ],
      ),
    );
  }
}