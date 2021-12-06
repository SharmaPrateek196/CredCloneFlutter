import 'package:cred/core/AppConstants.dart';
import 'package:cred/core/Extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomeAdvCardModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Neumorphic(
        margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 4.0),
        style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          depth: 3,
          intensity: 0.5,
          lightSource: LightSource.topLeft,
          color: HexColor.fromHex(LightSkyblue),
          border: NeumorphicBorder(color: HexColor.fromHex(ExtraDarkBackground), width: 4),
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.all(Radius.circular(14)))
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 32),
                child: Center(
                  child: Image.asset("assets/images/amazonpay_gc.png"),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "hurry up, offer expiring soon!",
                      style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "limited stock available",
                      style: TextStyle(
                        fontSize: 17, fontWeight: FontWeight.normal, color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    MaterialButton(
                      padding: const EdgeInsets.symmetric(
                        vertical: 14.0, horizontal: 36.0,
                      ),
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)
                      ),
                      onPressed: (){},
                      child: Text(
                        "Claim now",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        // child: LayoutBuilder(
        //   key: Key("amazoncouponkey"),
        //   builder: (BuildContext context, BoxConstraints constraints){
        //     return Column
        //   },
        // ),
      ),
    );
  }

  const HomeAdvCardModel({Key key}) : super(key: key);
}
