// ListView 
// 滚动视图确实是门学问，里面有很多有趣的，且界面良好的scroll widget

import 'package:flutter/material.dart';

class ListViewLearn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('ListView')
      ),
      body: ListView.builder(
        // padding: EdgeInsets.all(16),
        // physics: const AlwaysScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black54, ))
            ),
            child: Text('item $index'),
          );
        },
      ),
    );
  }
}