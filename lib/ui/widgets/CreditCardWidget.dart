import 'package:cred/core/AppConstants.dart';
import 'package:cred/core/Extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CreditCardLayout extends StatelessWidget {
  const CreditCardLayout({Key key}) : super(key: key);

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
          padding: const EdgeInsets.all(24.0),
          child: CreditCardWidget(),
        ),
      ),
    );
  }
}

class CreditCardWidget extends StatefulWidget {
  const CreditCardWidget({Key key}) : super(key: key);

  @override
  _CreditCardWidgetState createState() => _CreditCardWidgetState();
}

class _CreditCardWidgetState extends State<CreditCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              "clear your upcoming bills to earn coins",
              style: TextStyle(
                fontSize: 18,
                color: HexColor.fromHex(TextBlack),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 10,
              ),
              SizedBox(
                child: Image.asset("assets/images/icici.png"),
                width: 32,
                height: 32,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ICICI Bank",
                              style: TextStyle(
                                fontSize: 18,
                                color: HexColor.fromHex(TextBlack),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "XXXX-1206",
                              style: TextStyle(
                                fontSize: 16,
                                color: HexColor.fromHex(Grey),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "₹ 11,327.6",
                          style: TextStyle(
                            fontSize: 18,
                            color: HexColor.fromHex(TextBlack),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "DUE IN 3 DAYS",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 16,
                            color: HexColor.fromHex(Maroon),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        MaterialButton(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0,
                          ),
                          color: HexColor.fromHex(ExtraDarkBackground),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)
                          ),
                          onPressed: (){},
                          child: Text(
                            "Pay now",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
