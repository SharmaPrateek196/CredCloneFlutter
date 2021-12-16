import 'package:cred/core/WaveClipper.dart';
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
  Animation<double> _waveAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = CustomAnimationController(
        duration: const Duration(seconds: 1), vsync: this
    );

    // _colorAnimation = ColorTween(begin: Colors.white, end: Colors.red)
    //   .animate(_animationController);
    // _colorAnimation.addListener(() {
    //   setState(() {});
    // });

    // _waterHeightAnimation = Tween<double>(begin: 10, end: 200)//end: MediaQuery.of(context).size.height*0.9)
    //   .animate(_animationController);
    // _waterHeightAnimation.addListener(() {
    //   setState(() {});
    // });
    // _animationController.forward();

    _animationController.repeat(reverse: true);
    _waveAnimation = Tween<double>(begin: -20, end: 0).animate(_animationController);
    //we have set begin to -600 and end to 0, it will provide the value for
    //left or right position for Positioned() widget to creat movement from left to right
    _waveAnimation.addListener(() {
      setState(() {}); //update UI on every animation value update
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Positioned.fill(
        //     child: Align(
        //       alignment: Alignment.center,
        //       child: Icon(Icons.person, size: 100)
        //     )
        // ),
        // Positioned.fill(
        //   child: Align(
        //     alignment: Alignment.bottomCenter,
        //     child: Container(
        //       height: _waterHeightAnimation.value,
        //       color: Colors.lightBlueAccent,
        //     ),
        //   ),
        // )

        Positioned(
          bottom:0, //position at the bottom
          right: _waveAnimation.value, //value of right from animation controller
          child: ClipPath(
            clipper: WaveClipperRightAngle(), //applying our custom clipper
            child: Opacity(
              opacity: 0.5,
              child: Container(
                color: Colors.lightBlueAccent,
                width: MediaQuery.of(context).size.width+50,
                height: 200,
              ),
            ),
          ),
        ),

        Positioned(
          bottom:0, //position at the bottom
          left: _waveAnimation.value, //value of left from animation controller
          child: ClipPath(
            clipper: WaveClipperZeroAngle(), //applying our custom clipper
            child: Opacity(
              opacity: 0.5,
              child: Container(
                color: Colors.lightBlueAccent,
                width: MediaQuery.of(context).size.width+50,
                height: 200,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
