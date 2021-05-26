import 'package:flutter/material.dart';
import 'package:clap_robot/my_flutter_app_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome',
      home: Scaffold(
        //提供的widget，include很多東東
        appBar: AppBar(
          //最上面那欄
          title: Text('ClapppYourSelf'),
          leading: Icon(
            //還沒弄完欸
            Icons.pets,
            color: Colors.white,
            size: 36.0,
          ),
          /*actions: IconButton(
            icon: const IconData(58751, fontFamily: 'MaterialIcons'),
          )*/
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.pan_tool_rounded), title: Text('拍手模式')),
          BottomNavigationBarItem(
              icon: Icon(Icons.queue_music_rounded), title: Text('唱歌模式')),
        ]),
      ),
    );
  }
}

/*class _RandomWords extends StatefulWidget {
  @override
  __RandomWordsState createState() => __RandomWordsState();
}

class __RandomWordsState extends State<_RandomWords> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}*/
