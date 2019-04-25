import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'First Flutter',
      routes: {
        'love_page': (context) => LovePage(),
      },
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 获取一个随机单词
    final _wordPair = WordPair.random();
    return new Scaffold(
        appBar: AppBar(
          title: Text('Words List'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.list),
              onPressed: () {
                Navigator.pushNamed(context, 'love_page');
              },
            ),
          ],
        ),
        body: RandomWords());
  }
}

class RandomWords extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        final _wordPair = WordPair.random();
        return Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.black26, style: BorderStyle.solid)),
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
            ));
      },
    );
  }
}

// 有状态组件的参数传递：
class LoveWords extends StatefulWidget {
  LoveWords({Key key, this.word}) : super(key: key);
  // 怎么获取当列的数据
  final word;
  @override
  LoveWordsState createState() => new LoveWordsState();
}

// 全局变量存储喜欢的单词列表
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
            print(_loveList);
          } else {
            _colors = Colors.brown[170];
            _icons = Icons.favorite_border;
            _loveList.remove(word);
            print(_loveList);
          }
        });
      },
    );
  }
}

class LovePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('Favorite Words')),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          if (index <= _loveList.length) {
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
          } else {
            return Center(child: Text('end!!!'));
          }
        },
      ),
    );
  }
}
