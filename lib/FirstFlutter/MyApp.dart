import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      // 去掉右上角的debug标识
      debugShowCheckedModeBanner: false,
      title: 'First Flutter',
      // 为第二个页面注册路由
      routes: {
        'love_page': (context) => LovePage(),
      },
      theme: ThemeData(
        primaryColor: Colors.grey,
      ),
      home: HomePage(),
    );
  }
}

// 首页
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('Words List'),
          actions: <Widget>[
            IconButton(
              // 第二个页面跳转按钮
              icon: Icon(Icons.list),
              onPressed: () {
                Navigator.pushNamed(context, 'love_page');
              },
            ),
          ],
        ),
        // 单词列表页面
        body: RandomWords());
  }
}

// 单词列表页
class RandomWords extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));
    return new ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        final _wordPair = WordPair.random();
        // 单个单词行的定制，包括一个单词和一个小心心按钮
        return InkResponse(

          child: 
            Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                // 制作一个下边框作为每行的分割线
                border: Border(
                    bottom: BorderSide(
                        color: Colors.black26, style: BorderStyle.solid)),
                // 背景颜色渐变
                gradient:
                    LinearGradient(colors: [Colors.white30, Colors.black12])),
            height: 40,
            child: Row(
              children: <Widget>[
                Expanded(
                    flex: 5,
                    child: Text('$_wordPair',
                        style: TextStyle(color: Colors.brown, fontSize: 30))),
                Expanded(flex: 2, child: LoveWords(word: _wordPair)),
              ],
            ))
        );
      },
    );
  }
}

// 收藏“小心心”按钮实现
class LoveWords extends StatefulWidget {
  LoveWords({Key key, this.word}) : super(key: key);
  // 怎么获取当列的数据
  final word;
  @override
  LoveWordsState createState() => new LoveWordsState();
}

// 全局变量存储 喜欢的单词 列表
var _loveList = <WordPair>[];

class LoveWordsState extends State<LoveWords> {
  var _colors = Colors.brown[170];
  var _icons = Icons.favorite_border;
  @override
  Widget build(BuildContext context) {
    return new IconButton(
      icon: Icon(_icons, size: 30, color: _colors),
      onPressed: () {
        setState(() {
          var word = widget.word;
          if (_colors == Colors.brown[170]) {
            _colors = Colors.red;
            _icons = Icons.favorite;
            // 使用widget.word。
            _loveList.add(word);
          } else {
            _colors = Colors.brown[170];
            _icons = Icons.favorite_border;
            _loveList.remove(word);
          }
        });
      },
    );
  }
}

// 显示喜欢的单词列表 页面
class LovePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('Favorite Words')),
      body: ListView.builder(
        // 限制列表数量
        itemCount: _loveList.length,
        itemBuilder: (BuildContext context, int index) {
            return new Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Colors.black26, style: BorderStyle.solid)),
                    gradient: LinearGradient(
                        colors: [Colors.white30, Colors.black12])),
                height: 40,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        flex: 5,
                        child: Text(_loveList[index].toString(),
                            style:
                                TextStyle(color: Colors.brown, fontSize: 30))),
                  ],
                ));
        },
      ),
    );
  }
}
