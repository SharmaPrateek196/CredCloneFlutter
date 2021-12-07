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
        child: Container(
          child: Neumorphic(
            style: NeumorphicStyle(
              depth: -4,
              intensity: 0.6,
              lightSource: LightSource.topLeft,
              color: HexColor.fromHex(DarkBackground),
              border: NeumorphicBorder(color: HexColor.fromHex(DarkBackground), width: 4),
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.all(Radius.circular(12)))
            ),
            child: NewCCWidget(),
          ),
        )
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

    final _divider = SizedBox(
      height: 0.1,
      width: double.infinity,
      child: Neumorphic(
        style: NeumorphicStyle(
          color: Colors.grey,
          shape: NeumorphicShape.concave,
          depth: 5,
          intensity: 0.2,
          lightSource: LightSource.topLeft,
        ),
      ),
    );

    return Column(
      children: [
        Container(
          height: 235,
          margin: const EdgeInsets.all(10),
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
                          letterSpacing: 1.5
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
        ),
        Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "total due",
                        style: TextStyle(
                          fontSize: 16,
                          color: HexColor.fromHex(CCTextGray),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "₹15,616",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "DUE IN 9 DAYS",
                    style: TextStyle(
                      fontSize: 15,
                      color: HexColor.fromHex(CreamyYellow),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      wordSpacing: 1.5
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24,),
              Text(
                "NO HIDDEN CHARGES",
                style: TextStyle(
                    fontSize: 15,
                    color: HexColor.fromHex(Green),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    wordSpacing: 1.5
                ),
              ),
              SizedBox(height: 24,),
              _divider,
              SizedBox(height: 18,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: NeumorphicButton(
                      padding: const EdgeInsets.symmetric(vertical: 17.0, horizontal: 0.0),
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
                      child: Center(
                        child: Text(
                          "Manage",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                              wordSpacing: 1.5
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: NeumorphicButton(
                      padding: const EdgeInsets.symmetric(vertical: 19.0, horizontal: 0.0),
                      margin: const EdgeInsets.only(top: 4, bottom: 4, left: 12),
                      style: NeumorphicStyle(
                          color: HexColor.fromHex(PayNowButtonBlue),
                          shape: NeumorphicShape.convex,
                          depth: 13,
                          intensity: 0.45,
                          lightSource: LightSource.topLeft,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(40)),
                          border: NeumorphicBorder(color: HexColor.fromHex(ExtraDarkBackground), width: 4.5)
                      ),
                      onPressed: () {},
                      child: Center(
                        child: Text(
                          "Pay Now",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                              wordSpacing: 1.5
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
