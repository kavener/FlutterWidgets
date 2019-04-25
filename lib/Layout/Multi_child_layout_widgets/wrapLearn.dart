//  Wrap

import 'package:flutter/material.dart';

class WrapLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('Wrap')),
      // 创建换行布局
      body: Wrap(
        // 横向堆砌
        direction: Axis.horizontal,
        // 对齐方式
        alignment: WrapAlignment.start,
        // 主轴空隙
        spacing: 0,
        // 运行本身应该如何放置在横轴???
        runAlignment: WrapAlignment.center,
        // 上下距离?
        runSpacing: 10,
        // 运行中的子元素应如何在横轴上相对对齐???
        crossAxisAlignment: WrapCrossAlignment.end, 
        // 确定垂直放置子元素的顺序，以及如何在垂直方向上解释开始和结束。 默认down
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: Chip(
                label: Container(
                    padding: EdgeInsets.all(2),
                    constraints: BoxConstraints(
                        // maxHeight: 30,
                        // maxWidth: 100,
                        minHeight: 10,
                        minWidth: 10),
                    decoration: BoxDecoration(
                        // color: Colors.blueAccent
                        ),
                    child: Text(
                      'hello',
                      style: TextStyle(color: Colors.blueAccent, fontSize: 30),
                      overflow: TextOverflow.fade,
                    )),
              )),
          Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: Chip(
                label: Container(
                    padding: EdgeInsets.all(2),
                    constraints: BoxConstraints(
                        // maxHeight: 30,
                        // maxWidth: 100,
                        minHeight: 10,
                        minWidth: 10),
                    decoration: BoxDecoration(
                        // color: Colors.blueAccent
                        ),
                    child: Text(
                      'hello',
                      style: TextStyle(color: Colors.blueAccent, fontSize: 30),
                      overflow: TextOverflow.fade,
                    )),
              )),
          Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: Chip(
                label: Container(
                    padding: EdgeInsets.all(2),
                    constraints: BoxConstraints(
                        // maxHeight: 30,
                        // maxWidth: 100,
                        minHeight: 10,
                        minWidth: 10),
                    decoration: BoxDecoration(
                        // color: Colors.blueAccent
                        ),
                    child: Text(
                      'hello',
                      style: TextStyle(color: Colors.blueAccent, fontSize: 30),
                      overflow: TextOverflow.fade,
                    )),
              )),
          Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: Chip(
                label: Container(
                    padding: EdgeInsets.all(2),
                    constraints: BoxConstraints(
                        // maxHeight: 30,
                        // maxWidth: 100,
                        minHeight: 10,
                        minWidth: 10),
                    decoration: BoxDecoration(
                        // color: Colors.blueAccent
                        ),
                    child: Text(
                      'hello',
                      style: TextStyle(color: Colors.blueAccent, fontSize: 30),
                      overflow: TextOverflow.fade,
                    )),
              )),
          Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: Chip(
                label: Container(
                    padding: EdgeInsets.all(2),
                    constraints: BoxConstraints(
                        // maxHeight: 30,
                        // maxWidth: 100,
                        minHeight: 10,
                        minWidth: 10),
                    decoration: BoxDecoration(
                        // color: Colors.blueAccent
                        ),
                    child: Text(
                      'hello',
                      style: TextStyle(color: Colors.blueAccent, fontSize: 30),
                      overflow: TextOverflow.fade,
                    )),
              )),
        ],
      ),
    );
  }
}
