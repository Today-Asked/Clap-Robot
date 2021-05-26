import 'package:flutter/material.dart';

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
            Icons.beach_access,
            color: Colors.blue,
            size: 36.0,
          ),
          /*actions: IconButton(
            icon: const IconData(58751, fontFamily: 'MaterialIcons'),
          )*/
        ),
        body: Center(
          child: Text('Hello World'),
        ),
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
