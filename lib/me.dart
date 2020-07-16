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
          title: Text("个人中心111"),
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

      return Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10),
                child: Text("我的订单"),
              )
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Container(
                height: 0.5,
                color: Colors.black45,
              ),
          ),
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: OrderItem('待付款'),
              ),
               Expanded(
                flex: 1,
                child: OrderItem("待分享"),
              ),
               Expanded(
                flex: 1,
                child: OrderItem("待自提"),
              ),
               Expanded(
                flex: 1,
                child: OrderItem("已完成"),
              )
            ],
          )
        ],
      );

  }
}


class OrderItem extends StatefulWidget {
 
  final String title;
  
  OrderItem(this.title):super();
   
  @override
  OrderItemState createState() => new OrderItemState();
}

class OrderItemState extends State<OrderItem> {

   @override
   Widget build(BuildContext context) {
     return Column(
        children: <Widget>[
          Image(
            fit: BoxFit.contain,
            width: 40,
            image: AssetImage('images/mine_order.png'),
          ),
          Text(widget.title)
        ],
     );
  }

}

