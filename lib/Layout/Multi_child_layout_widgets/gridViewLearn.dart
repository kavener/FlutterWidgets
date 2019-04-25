// GridView
// 想要找到某个参数的定义，就一层层的追逐，知道找到第一次构造函数的定义参数的位置 或者在文档中搜寻相关定义
import 'package:flutter/material.dart';

class GridViewLearn extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('GridView')
      ),
      // 一个可滚动的2D widget矩阵
      // body: GridView(
      //   // 滚动方向，默认为vertical，即垂直方向 滚动视图是否在读取方向上滚动
      //   scrollDirection: Axis.vertical,
      //   // 可能指滑动方向
      //   reverse: false,
      //   // 控制小部件滚动的位置
      //   // controller: ,
      //   // 这是否是与父[PrimaryScrollController]关联的主滚动视图
      //   // primary: ,
      //   // 滚动视图应该如何响应用户输入 例如，确定用户停止拖动滚动视图后滚动视图如何继续动画。
      //   // physics: ,
      //   // 滚动视图在[滚动方向]中的范围是否应由正在查看的内容决定 默认false
      //   // shrinkWrap: ,
      //   // 补白
      //   padding: EdgeInsets.all(16),
      //   // 控制子元素的布局
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     // 横轴上的子元素个数
      //     crossAxisCount: 2,
      //     // 沿主轴的每个子元素之间的逻辑像素数
      //     mainAxisSpacing: 16,
      //     // 沿横轴的每个子元素之间的逻辑像素数
      //     crossAxisSpacing: 10,
      //     // 每个孩子的横轴与主轴的比例
      //     childAspectRatio: 4,
      //   ),
      //   // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //   //   maxCrossAxisExtent: 120,
      //   //   // 主轴间距
      //   //   mainAxisSpacing: 16,
      //   //   // 横轴间距
      //   //   crossAxisSpacing: 16,
      //   //   // 比例
      //   //   childAspectRatio: 4
      //   // ),
      //   children: <Widget>[
      //     Text('likesCakeandother', style: TextStyle(fontSize: 30, color: Colors.blue)),
      //     Text('likesCakeandother', style: TextStyle(fontSize: 30, color: Colors.blue)),
      //     Text('likesCakeandother', style: TextStyle(fontSize: 30, color: Colors.blue)),
      //     Text('likesCakeandother', style: TextStyle(fontSize: 30, color: Colors.blue)),
      //     Text('likesCakeandother', style: TextStyle(fontSize: 30, color: Colors.blue)),
      //     Text('likesCakeandother', style: TextStyle(fontSize: 30, color: Colors.blue)),
      //     Text('likesCakeandother', style: TextStyle(fontSize: 30, color: Colors.blue)),
      //     Text('likesCakeandother', style: TextStyle(fontSize: 30, color: Colors.blue)),
      //     Text('likesCakeandother', style: TextStyle(fontSize: 30, color: Colors.blue)),
      //     Text('likesCakeandother', style: TextStyle(fontSize: 30, color: Colors.blue)),
           
      //   ],
      // ),
      body: GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisSpacing: 10.0,
        crossAxisCount: 2,
        padding: EdgeInsets.all(16),
        
        children: <Widget>[
          const Text('Some', style: TextStyle(fontSize: 30)),
          const Text('thing', style: TextStyle(fontSize: 30)),
          const Text('like', style: TextStyle(fontSize: 30))
        ],
      )
    );
  }
}