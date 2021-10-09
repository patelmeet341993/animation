import 'package:flutter/material.dart';
import 'package:flutter_apps/ColorAnim.dart';
import 'package:flutter_apps/customAnim.dart';
import 'package:flutter_apps/page1.dart';
import 'package:flutter_apps/page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: ColorAnim(),
    );
  }
}
