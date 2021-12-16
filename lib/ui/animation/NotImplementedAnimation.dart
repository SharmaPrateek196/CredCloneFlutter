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
        duration: const Duration(seconds: 3), vsync: this
    );

    _animationController.repeat(reverse: true);

    _waveAnimation = Tween<double> (
      begin: -60, end: 0
    ).animate(
      CurvedAnimation(
          parent: _animationController,
          curve: Interval(
            0.0, 1.0,
            curve: Curves.linear,
          )
      )
    );

    _waterHeightAnimation = Tween<double>(
      begin: 50.0,
      end: 800.0,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(
          0.0, 1.0,
          curve: Curves.linear,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationController,
        builder: (BuildContext context, Widget child) {
          return SizedBox(
            height: 200,
            child: Stack(
              children: [
                Positioned.fill(
                  right: _waveAnimation.value, //value of right from animation controller
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
                  left: _waveAnimation.value, //value of left from animation controller
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
              ],
            ),
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
