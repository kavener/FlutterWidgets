// Offstage

import 'package:flutter/material.dart';



class OffstageLearn extends StatefulWidget {
  @override 
  OffstageLearnState createState() => OffstageLearnState();

}

class OffstageLearnState extends State<OffstageLearn> {
  bool _offstage = false;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Offstage'),
      ),
      body: Column(children: <Widget>[
        // 视觉上隐藏小部件  _offstage 为真即隐藏
        Offstage(
          offstage: _offstage,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.blue, Colors.purple])
            ),
            width: 300,
            height: 400,
          ),
        ),
        IconButton(
          icon: Icon(Icons.accessible),
          onPressed: (){
            setState(() {
             _offstage = !_offstage; 
            });
          },
        ),
      ],)
    );
  }
}