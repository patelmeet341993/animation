import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_apps/page2.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {

//    timeDilation=5;

    return SafeArea(child: Scaffold(
      body: InkWell(
          onTap: (){

            Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));

          },
          child: Hero(
              tag: "myname",
              child: Icon(Icons.share,size: 40,))),
    ));
  }
}
