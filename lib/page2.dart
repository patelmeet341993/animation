import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: InkWell(
          onTap: (){

          },
          child: Center(child: Hero(
              tag: "myname",
              child: Icon(Icons.share,size: 150,)))),
    ));
  }
}