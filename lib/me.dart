import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("个人中心"),
      ) ,
      body: Center(
        child: ListView(
          children: <Widget>[
            Text("HELLO WORLD1"),
            Text("HELLO WORLD2"),
            Text("HELLO WORLD3"),
            Text("HELLO WORLD4"),
          ],
        )
      )
    );
  }
}
