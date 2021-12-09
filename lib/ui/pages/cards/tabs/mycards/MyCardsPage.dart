import 'package:cred/core/AppConstants.dart';
import 'package:cred/core/Extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class MyCardsPage extends StatelessWidget {
  const MyCardsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          AddCardRow(),
        ],
      )
    );
  }
}

class AddCardRow extends StatelessWidget {
  const AddCardRow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "your cards",
            style: TextStyle(
                fontSize: 17,
                color: HexColor.fromHex(TextGray),
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
                wordSpacing: 1.5
            ),
          ),
          NeumorphicButton(
            padding: const EdgeInsets.only(top: 4.0, bottom: 4.0, right: 18.0, left: 6.0),
            margin: const EdgeInsets.only(top: 4, bottom: 4, right: 12),
            style: NeumorphicStyle(
                color: HexColor.fromHex(DarkBackground),
                shape: NeumorphicShape.convex,
                surfaceIntensity: 0.15,
                depth: 13,
                intensity: 0.45,
                lightSource: LightSource.topLeft,
                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(40))
            ),
            onPressed: () {},
            child: Row(
              children: [
                SizedBox(
                  height: 34, width: 34,
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      depth: 0.3,
                      intensity: 0.5,
                      lightSource: LightSource.bottomRight,
                      color: HexColor.fromHex(DarkBackground),
                      boxShape: NeumorphicBoxShape.circle()
                    ),
                    child: Icon(Icons.add, color: Colors.white30, size: 16,),
                  ),
                ),
                SizedBox(width: 14,),
                Text(
                  "Add card",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      wordSpacing: 1.5
                  ),
                ),
              ]
            ),
          ),
        ],
      ),
    );
  }
}

