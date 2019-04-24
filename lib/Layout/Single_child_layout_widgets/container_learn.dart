// container 详解学习

import 'package:flutter/material.dart';

class ContainerLearn extends StatelessWidget {
  final _textStyle = TextStyle(
            color: Colors.white,
            fontSize: 20,
            letterSpacing: 4,
            wordSpacing: 4,
            shadows: [Shadow(color: Colors.black87, offset: Offset(5, 5), blurRadius: 8)]
          );
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      // 一个方便的小部件，它组合了常见的绘画、定位和大小小部件。
      body: new Container(
        // 控制容器中child的位置，可以输入坐标参数，也可以设置预先设定的坐标位置  
        // Aliment(0.0,0.0)表示矩形的中心。从-1.0到+1.0的距离是矩形的一边到另一边的距离。因此，2.0单位水平(或垂直)等于矩形的宽度(或高度)。
        alignment: Alignment(0, 1),
        // 在容器内填充，填充物为child  和alignment对齐会有冲突，但是最终还是padding主导 可以上下左右都可以填充  symmetric 垂直或水平的填充， only 填充一个方向
        padding: EdgeInsets.symmetric(vertical: 60, horizontal: 75),
        // 容器背景颜色 此处是 decoration: new BoxDecoration(color: color) 简写，即不能同时decoration和color使用，冲突时当然是将color放在Boxdecoration中设置执行
        // color: Colors.blueAccent,
        // 由此类提供所有装饰的抽象接口定义，可以使用boxDEcoration，其提供了多种装饰能力
        decoration: BoxDecoration(
          // 背景颜色
          color: Colors.blueAccent,
          // 背景图像
          image: DecorationImage(
            // 可使用的子类： AssetBundleImageProvider FileImage MemoryImage NetworkImage
            image: NetworkImage(
              'https://flutter.cn/assets/get-started/ios/hello-world-ed7cf47213953bfca5eaa74fba63a78538d782f2c63a7c575068f3c2f7298bde.png',
              // 图像比例，数值越大图片比例越小
              scale: 3.0,
              // 请求图像的头信息
              headers: {'User-Agent': 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36'}
              ),
            // 彩色滤镜，此处为覆盖一个black12滤镜
            colorFilter: ColorFilter.mode(Colors.black12, BlendMode.srcOver),
            // 怎么将图像填充到容器中 比如contain 尽可能大，但将图像完全包含在目标框中。
            fit: BoxFit.none,
            // 在范围对图像进行对齐操作
            alignment: Alignment.center,
            // 对于可拉伸图片的切片操作？ 不是很懂
            // centerSlice: Rect.fromLTRB(3,3,3,3)
            // 图重复的方向，repeat 即x 轴和y 轴都重复 然后 repeatX 即在X方向重复
            repeat: ImageRepeat.repeatX,
            // 是否在 TextDirection 方向绘图 
            matchTextDirection: false
          ),
        // 边框 BoxDecoration 抽象类   使用子类有 Border BorderDirectional
        // Border可以独立绘制上下左右独立边框的颜色，宽度等 当然也可以使用封装好的比如 all，直接绘制边框
        border: Border.all(
          color: Colors.black87,
          width: 2.0,
          // 边框样式 
          style: BorderStyle.solid
        ),
        // 圆角
        borderRadius: BorderRadius.circular(30),
        // 盒子的阴影列表，形状随盒子而变
        boxShadow: <BoxShadow>[
          BoxShadow(
            // color 阴影颜色   offset 阴影的相对盒子的偏移量，   blueRadius 阴影的模糊程度   spreadRadius 类似阴影的膨胀程度，可以理解为阴影的大小
            color: Colors.black45, offset: Offset(8, 8), blurRadius: 7, spreadRadius: 7
          )
          ],
        // Gradient 抽象类定义 渐变类 LinearGradient
        gradient: LinearGradient(
          // 渐变偏移量开始的位置
          begin: Alignment(-1, 0),
          // 渐变偏移结束的位置
          end: Alignment(1, 0),
          // 绘制的基色
          colors: <Color>[Colors.purple,Colors.blue[900]],
          // 创建一个线性梯度 0~1.0 这个不懂
          // stops: <double>[0.6],
          // 定义渐变梯度的边缘 对比image的repeat
          tileMode: TileMode.clamp
        ),
        // 形状
        shape: BoxShape.rectangle
        ),
        // 前景装饰
        foregroundDecoration: BoxDecoration(),
        // 长度 
        width: 224,
        // 高度
        height: 486,
        // 限制容器大小
        constraints: BoxConstraints(
          // 设置宽度尽可能大
          // minWidth: double.infinity,    
          // 最小高度20
          minHeight: 20,
          // 最大宽度 300
          maxWidth: 300,
        ),
        // 容器外填充
        margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        // 对容器实现矩阵变换操作，Matrix是一个4D矩阵
        transform: Matrix4.skewY(0.3)..rotateZ(-3.14 / 12.0),
        child: Icon(Icons.close, color: Colors.white70,semanticLabel: 'Close',)
        ),
    );
  }
}