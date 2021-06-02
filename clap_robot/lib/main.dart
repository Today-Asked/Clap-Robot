import 'package:flutter/material.dart';
import 'package:clap_robot/my_flutter_app_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '一起拍手8', home: MyHomePage(title: 'Clappppp Yourself'));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _StateOption = <Widget>[
    /*ListView(
      children: <Widget>[
        Card(
          child: ListTile(title: Text('熱烈拍手'))
        )
      ],
    ),*/
  ];
  void _onItemTap(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Clappp Yourself"),
          leading: Icon(
            Icons.bubble_chart,
            color: Colors.white,
            size: 36.0,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.pan_tool_rounded), title: Text('拍手模式')),
            BottomNavigationBarItem(
                icon: Icon(Icons.queue_music_rounded), title: Text('唱歌模式')),
          ],
          onTap: _onItemTap,
          currentIndex: _selectedIndex,
        ),
        body: Center(
          child: _StateOption.elementAt(_selectedIndex),
        ));
  }
}
