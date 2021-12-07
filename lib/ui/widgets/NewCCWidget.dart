import 'package:cred/core/AppConstants.dart';
import 'package:cred/core/Extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NewCCLayout extends StatelessWidget {
  const NewCCLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
      child: Neumorphic(
        style: NeumorphicStyle(
          depth: 4.5,
          lightSource: LightSource.bottom,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
          color: HexColor.fromHex(White),
        ),
        child: Container(
          child: Neumorphic(
            style: NeumorphicStyle(
              depth: -4,
              intensity: 0.6,
              lightSource: LightSource.topLeft,
              color: HexColor.fromHex(DarkBackground),
              border: NeumorphicBorder(color: HexColor.fromHex(DarkBackground), width: 4),
              //boxShape: NeumorphicBoxShape.roundRect(BorderRadius.all(Radius.circular(24)))
            ),
            child: NewCCWidget(),
          ),
        )
      ),
    );
  }
}

class NewCCWidget extends StatefulWidget {
  const NewCCWidget({Key key}) : super(key: key);

  @override
  _NewCCWidgetState createState() => _NewCCWidgetState();
}

class _NewCCWidgetState extends State<NewCCWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 235,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12)
        ),
        color: HexColor.fromHex(CCDarkBackground)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "HDFC PLATINUM",
                style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                child: Image.asset("assets/images/hdfc_logo.png"),
                height: 20,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "4334 8397 XXXX 8321",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "PRATEEK SHARMA",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 0.5
                    ),
                  ),
                ],
              ),
              SizedBox(
                child: Image.asset("assets/images/visa_logo.png"),
                height: 18,
              )
            ],
          )
        ],
      ),
    );
  }
}
