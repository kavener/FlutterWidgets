// ConstrainedBox  示例和测试为生效？？？ 

import 'package:flutter/material.dart';

class ConstrainedBoxLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('ConstrainedBox')
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 400,
          decoration: BoxDecoration(
            border: Border.all()
          ),
          //利用UnconstrainedBox 消除之前限制
          child: UnconstrainedBox(
            // 对child进行约束，
            child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 30,
              minWidth: 30,
              maxHeight: 150,
              maxWidth: 150
            ),
            child: Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: [Colors.blue, Colors.purple]),

              ),
            )
          )
          ),
          
        ),
      ),
    );
  }
}