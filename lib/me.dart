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
        ),
        body: Center(
            child: ListView(
          children: <Widget>[TopPage(),OrderPage()],
        )));
  }
}

class TopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          child: Image(
            image: AssetImage('images/mine_back.png'),
          ),
        ),
        Positioned(
            left: 50,
            top: 45,
            width: 50,
            height: 50,
            child: ClipOval(
              child: Image(
                image: AssetImage('images/mine_avatar.png'),
              ),
            )),
        Positioned(
          left: 110,
          top: 45,
          height: 50,
          width: 100,
          child: Center(
              child: Column(
            children: <Widget>[Text("张起灵"), Text("好生活,不贵")],
          )),
        ),
        Positioned(
          bottom: 0,
          height: 40,
          left: 50,
          right: 30,
          child: Row(
            children: <Widget>[
              Image(
                width: 20,
                height: 20,
                image: AssetImage('images/mine_location.png'),
              ),
              Text('取货中心:点此查看我的可取商品'),
              Image(
                width: 15,
                height: 15,
                image: AssetImage("images/mine_rightArrow.png"),
              )
            ],
          ),
        )
      ],
    );
  }
}


class OrderPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

      return Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 35,
            child: Row(
              children: <Widget>[
                Text("我的订单")
              ],
            ),
          )
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 35,
            child: Row(
              children: <Widget>[

              ],
            ),
          )
        ],
      );

  }
}


class OrderItem extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
     return Column(
        children: <Widget>[
          Image(
            image: AssetImage('images/mine_avatar.png'),
          ),
          Text("全部")
        ],
     );
  }
}
