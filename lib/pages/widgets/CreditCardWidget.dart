import 'package:cred/core/AppConstants.dart';
import 'package:cred/core/Extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreditCardLayout extends StatelessWidget {
  const CreditCardLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadowColor: HexColor.fromHex(CardShadow),
        color: HexColor.fromHex(White),
        child: Container(
          padding: const EdgeInsets.all(16.0),
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
                fontSize: 16,
                color: HexColor.fromHex(TextBlack),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Row(
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
              Column(
                children: [
                  Text(
                    "ICICI Bank",
                    style: TextStyle(
                      fontSize: 16,
                      color: HexColor.fromHex(TextBlack),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "XXXX-1206",
                    style: TextStyle(
                      fontSize: 12,
                      color: HexColor.fromHex(Grey),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "₹ 11,327.6",
                    style: TextStyle(
                      fontSize: 16,
                      color: HexColor.fromHex(TextBlack),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            "DUE IN 3 DAYS",
            style: TextStyle(
              fontSize: 12,
              color: HexColor.fromHex(Maroon),
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
