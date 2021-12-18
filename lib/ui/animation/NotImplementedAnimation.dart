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
  Animation<double> _waveAnimation1;
  Animation<double> _waveAnimation2;
  Animation<double> _boatAnimation;
  Animation<double> _angleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = CustomAnimationController(
        duration: const Duration(seconds: 3), vsync: this
    );

    _animationController.repeat(reverse: true);

    _waveAnimation1 = Tween<double> (
      begin: -60, end: 0
    ).animate(
      CurvedAnimation(
          parent: _animationController,
          curve: Interval(
            0.0, 1.0,
            curve: Curves.bounceOut,
          )
      )
    );

    _waveAnimation2 = Tween<double> (
        begin: -60, end: 0
    ).animate(
        CurvedAnimation(
            parent: _animationController,
            curve: Interval(
              0, 1,
              curve: Curves.bounceIn,
            )
        )
    );

    _boatAnimation = Tween<double> (
        begin: -30, end: 600
    ).animate(
        CurvedAnimation(
            parent: _animationController,
            curve: Interval(
              0.0, 1.0,
              curve: Curves.linear,
            )
        )
    );

    _angleAnimation = Tween<double> (
        begin: 0.2, end: 1
    ).animate(
        CurvedAnimation(
            parent: _animationController,
            curve: Interval(
              0.3, 0.5,
              curve: Curves.linear,
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationController,
        builder: (BuildContext context, Widget child) {
          return Stack(
            children: [
              Positioned.fill(
                  top: 20,
                  child: Transform.scale(
                    //angle: _angleAnimation.value,
                    scale: _angleAnimation.value,
                    child: Center(
                      child: Text(
                        "Not Implemented Yet",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  )
              ),
              Positioned.fill(
                right: _waveAnimation1.value, //value of right from animation controller
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Wrap(
                    children: [
                      ClipPath(
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
                    ],
                  ),
                ),
              ),

              Positioned.fill(
                bottom:0, //position at the bottom
                left: _waveAnimation2.value, //value of left from animation controller
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Wrap(
                    children: [
                      ClipPath(
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
                    ],
                  ),
                ),
               ),

              Positioned(
                bottom: 120, //position at the bottom
                right: _boatAnimation.value, //value of left from animation controller
                child: Wrap(
                  children: [
                    Icon(
                      Icons.houseboat,
                      size: 120,
                    )
                  ],
                ),
              ),
            ],
          );
        }
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
