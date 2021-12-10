import 'package:cred/core/AppConstants.dart';
import 'package:cred/core/Extensions.dart';
import 'package:cred/models/HomeAdvModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomeAdvCardModel extends StatefulWidget {
  const HomeAdvCardModel({Key key, @required this.homeAdvModel, @required this.callback}) : super(key: key);
  final HomeAdvModel homeAdvModel;
  final Function callback;

  @override
  State<HomeAdvCardModel> createState() => _HomeAdvCardModelState();
}

class _HomeAdvCardModelState extends State<HomeAdvCardModel> {
  @override
  Widget build(BuildContext context) {
    final _boxStyle = NeumorphicStyle(
        shape: NeumorphicShape.concave,
        depth: 3,
        intensity: 0.5,
        lightSource: LightSource.topLeft,
        color: HexColor.fromHex(LightSkyblue),
        border: NeumorphicBorder(color: HexColor.fromHex(ExtraDarkBackground), width: 4),
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.all(Radius.circular(14)))
    );

    final _promoImage = Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 32),
        child: Center(
          child: Image.asset("assets/images/amazonpay_gc.png"),
        ),
      ),
    );

    final _promoHeading = Text(
      "hurry up, offer expiring soon!",
      style: TextStyle(
        fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black,
      ),
      textAlign: TextAlign.center,
    );

    final _claimButtonStyle = TextStyle(
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.normal,
    );

    final _promoDesc = Text(
      "limited stock available",
      style: TextStyle(
        fontSize: 17, fontWeight: FontWeight.normal, color: Colors.black,
      ),
      textAlign: TextAlign.center,
    );

    var _isClaimed = widget.homeAdvModel.isClaimed;
    final _onIsClaimClicked = () {
      setState((){
      _isClaimed = true;
      });
      widget.callback(widget.homeAdvModel.index);
    };

    return Container(
      height: 500,
      child: Neumorphic(
        margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 4.0),
        style: _boxStyle,
        child: Column(
          children: [
            _promoImage,
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _promoHeading,
                    _promoDesc,
                    MaterialButton(
                      padding: const EdgeInsets.symmetric(
                        vertical: 14.0, horizontal: 36.0,
                      ),
                      color: _isClaimed ? Colors.grey : Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)
                      ),
                      onPressed: _isClaimed ? null : () {_onIsClaimClicked();},
                      child: Text(
                        _isClaimed ? "Claimed" : "Claim now",
                        style: _claimButtonStyle,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
