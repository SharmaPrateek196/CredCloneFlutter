import 'package:cred/ui/animation/CustomAnimationController.dart';
import 'package:flutter/material.dart';

class NotImplementedAnimation extends StatefulWidget {
  const NotImplementedAnimation({Key key}) : super(key: key);

  @override
  _NotImplementedAnimationState createState() => _NotImplementedAnimationState();
}

class _NotImplementedAnimationState extends State<NotImplementedAnimation> with SingleTickerProviderStateMixin {
  CustomAnimationController _animationController;
  Animation<Color> _colorAnimation;
  Animation<double> _waterHeightAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = CustomAnimationController(
        duration: const Duration(seconds: 4), vsync: this
    );

    // _colorAnimation = ColorTween(begin: Colors.white, end: Colors.red)
    //   .animate(_animationController);
    // _colorAnimation.addListener(() {
    //   setState(() {});
    // });
    _waterHeightAnimation = Tween<double>(begin: 10, end: 200)//end: MediaQuery.of(context).size.height*0.9)
      .animate(_animationController);
    _waterHeightAnimation.addListener(() {
      setState(() {});
    });
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Icon(Icons.person, size: 100)
            )
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: _waterHeightAnimation.value,
              color: Colors.lightBlueAccent,
            ),
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
