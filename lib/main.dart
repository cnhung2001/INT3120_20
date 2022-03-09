import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'INT 3120 20',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Lesson 7'),
    );
  }
}
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Lesson 7")),

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
      ProductBox(name: "chuyen co tich danh cho nguoi lon", price: 20, image: "https://th.bing.com/th/id/R.0701a65fe503c51ce25ef16458c8acf0?rik=H4e71YaVO4FNuQ&pid=ImgRaw&r=0"),
    ],
    )
    );
  }
}
class ProductBox extends StatelessWidget {
  ProductBox({Key? key, required this.name, required this.price, required this.image})
      : super(key: key);
  final String name;
  final int price;
  final String image;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2), height: 120,  child: Card(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
          Image.asset("assets/appimages/" +image), Expanded(
              child: Container(
                  padding: EdgeInsets.all(5), child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Text(this.name, style: TextStyle(fontWeight:
                  FontWeight.bold)),
                  Text("Price: " + this.price.toString()),
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

