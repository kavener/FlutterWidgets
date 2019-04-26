// AppBar

import 'package:flutter/material.dart';

class AppBarLearn extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return new Scaffold(
      // AppBar  Material 应用栏，有工具栏和其他的Widget构成 应用栏通常用于Scaffold.appBar属性，
      // 该属性将应用栏放置在屏幕顶部的固定高度小部件中。对于可滚动的应用栏，
      // 请参阅SliverAppBar，它将一个AppBar嵌入到一个条子中，以便在CustomScrollView中使用。
      appBar: AppBar(
        // leading: ,
        
        // 现在标题前面的Widget，一般为一个图标按钮，也可以是任意Widget
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              // 如果有抽屉的话的就打开
              onPressed: () { Scaffold.of(context).openDrawer(); },
              // 显示描述信息
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        // 配合leading使用，取决于automaticallyImplyLeading == true && leading ==null ，此时会自动做出一些哈事情。
        automaticallyImplyLeading: true,
        // appBar的主要部件，类型为Widget，那么尝试做成输入框？ 
        title: TextField(

        ),
        // title之后显示的部件，其实这样看来，Appbar可以看成一个Row (children: <Widget>[])布局
        actions: <Widget>[
          Icon(Icons.search),
        ],
        // 也是一个Widgets,不过好像有一些定义的Widgets 实在不知道怎么用，应为感觉大量重复，
        flexibleSpace: FlexibleSpaceBar(
          title: Text('')
        ),
        // 这个小部件出现在应用程序栏的底部。 通常是一个TarBar，即一个标签栏
        bottom: TabBar(
          tabs: <Widget>[
            Icon(Icons.cloud_queue),
            Icon(Icons.cloud_upload),
            Icon(Icons.cloud_download),
            Icon(Icons.folder_open)
          ],
          controller: TabController(
            length: 4, 
          ),
          // 是否可以水平滚动
          isScrollable: true,
        ),
      ),
      // 定义一个空抽屉
      drawer: Drawer(),
    );
  }
}