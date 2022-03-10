import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', theme: ThemeData(
      primarySwatch: Colors.blue,),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key ? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:Text("Lesson 10")),
    body: ListView(
    shrinkWrap: true, padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
    children: <Widget> [
    ProductBox(
    name: "Cho Tôi Xin Một Vé Đi Tuổi Thơ",
    price: 1000,
    image: "sach1.jpg"
    ),
    ProductBox(
    name: "Cô Gái Đến Từ Hôm Qua",
    price: 800,
    image: "sach2.jpg"
    ),
    ProductBox(
    name: "Tôi Thấy Hoa Vàng Trên Cỏ Xanh",
    price: 2000,
    image: "sach3.jpg"
    ),
    ProductBox(
    name: "Tôi Là Bêtô",
    price: 1500,
    image: "sach4.jpg"
    ),
    ProductBox(
    name: "Còn Chút Gì Để Nhớ",
    price: 100,
    image: "sach5.jpg"
    ),
    ProductBox(
    name: "Mắt Biếc",
    price: 20,
        image: "sach6.jpg"
    ),
    ],
    )
    );
  }
}

class RatingBox extends StatefulWidget {
  @override
  _RatingBoxState createState() =>
      _RatingBoxState();
}
class _RatingBoxState extends State<RatingBox> {
  int _rating = 0;
  void _setRatingAsOne() {
    setState( () {
      _rating = 1;
    });
  }
  void _setRatingAsTwo() {
    setState( () {
      _rating = 2;
    });
  }
  void _setRatingAsThree() {
    setState( () {
      _rating = 3;
    });
  }
  Widget build(BuildContext context) {
    double _size = 20;
    print(_rating);
    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
    Container(
    padding: EdgeInsets.all(0),
    child: IconButton(
    icon: (_rating >= 1 ? Icon(Icons.star, size: _size,) :
    Icon(Icons.star_border, size: _size,)),
    color: Colors.red[500],
    onPressed: _setRatingAsOne,
    iconSize: _size,
    ),
    ),
    Container(
    padding: EdgeInsets.all(0),
    child: IconButton(
    icon: (_rating >= 2 ? Icon(Icons.star, size: _size,) :
    Icon(Icons.star_border, size: _size,)),
    color: Colors.red[500],
    onPressed: _setRatingAsTwo,
      iconSize: _size,
    ),
    ),
          Container(
            padding: EdgeInsets.all(0),
            child: IconButton(
              icon: (_rating >= 3 ? Icon(Icons.star, size: _size,) :
              Icon(Icons.star_border, size: _size,)),
              color: Colors.red[500],
              onPressed: _setRatingAsThree,
              iconSize: _size,
            ),
          ),
        ],
    );
  }
}
class ProductBox extends StatelessWidget {
  ProductBox({Key ? key,required this.name, required this.price, required this.image}) :
        super(key: key);
  final String name;
  final int price;
  final String image;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
    height: 140,
    child: Card(
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
    Image.asset("assets/appimages/" + image),
    Expanded(
    child: Container(
    padding: EdgeInsets.all(5),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
    Text(this.name, style: TextStyle(fontWeight: FontWeight.bold)),
    Text("Price: " + this.price.toString()),
    RatingBox(),
    ],
    )
    )
    )
    ]
    )
    )
    );
  }
}
