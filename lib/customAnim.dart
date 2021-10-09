import 'package:flutter/material.dart';



class AnimationPage extends StatefulWidget {
  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    animation = Tween<double>(begin: 0, end: 300).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        print("completed");
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        print("dismissed");
        _controller.forward();
      }
    });

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              
              Positioned(
                  top: animation.value,
                  left: animation.value,

                  child: Container(height: 100,width: 100,color: Colors.black,))
              
            ],
          ),
        )
      ),
    );


  }
  
  Widget resizeAnim(){
    return Center(
      child: Container(
        color: Colors.black,
        width: animation.value,
        height: animation.value,
      ),
    );
  }
  
}
