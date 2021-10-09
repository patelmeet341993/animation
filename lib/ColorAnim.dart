import 'package:flutter/material.dart';

class ColorAnim extends StatefulWidget {
  @override
  _ColorAnimState createState() => _ColorAnimState();
}

class _ColorAnimState extends State<ColorAnim> with SingleTickerProviderStateMixin {


  late AnimationController controller;
  late Animation<Color?> animation;

  @override
  void initState() {
    super.initState();

    controller=AnimationController(vsync: this, duration: Duration(seconds: 5));
    animation =ColorTween(begin: Colors.red,end: Colors.yellow).animate(controller)
      ..addListener(() {
        setState(() {});
      });


    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        print("completed");
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        print("dismissed");
        controller.forward();
      }
    });

    controller.forward();

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: colorAnimWidget()
      ),
    );
  }


  Widget colorAnimWidget(){
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: animation.value
        ),
        width: 200,
        height: 200,
      ),
    );
  }

}
