import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const IconData heart = IconData(0xf442, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color:  Colors.black),
          backgroundColor: Colors.white,
          title: Row(
                      children: [
                        Text("금호동3가", style: TextStyle(color: Colors.black)),
                        Icon(Icons.keyboard_arrow_down)
                      ],
                    ),
          actions: [
            Container(margin: EdgeInsets.fromLTRB(10, 0, 10, 0), child: Icon(Icons.search)),
            Container(margin: EdgeInsets.fromLTRB(10, 0, 10, 0), child: Icon(Icons.menu)),
            Container(margin: EdgeInsets.fromLTRB(10, 0, 10, 0), child: Icon(Icons.notifications_none)),
          ],
        ),
        body : Container(
          height: 150,
          child: Row(
            children: [
              Image.asset('camera.jpeg', width: 140, height: 140),
              Container(
                width: 250,
                height: 140,
                padding: EdgeInsets.fromLTRB(10, 0, 30, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 35, 0),
                        child: Text("캐논 DSLR 100D (단렌즈, 충전기 16기가SD 포함", style: TextStyle(fontSize: 17),)),
                    Text("성동구 행당동 - 끌올 10분 전", style: TextStyle(color: Colors.grey, fontSize: 10)),
                    Text("210,000원"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(heart),
                          Text("4")
                        ],)
                  ],
                ),
              )
            ],
          ),
        )
      )
    );
  }
}


