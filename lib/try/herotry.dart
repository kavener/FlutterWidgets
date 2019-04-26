import 'package:flutter/material.dart';

class HeroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transition Demo',
      // 注册新路由
      home: SliverLearn(),
    );
  }
}

class SliverLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text('SliverLearn')),
        body: 
         Text('d')
      );
  }
}
