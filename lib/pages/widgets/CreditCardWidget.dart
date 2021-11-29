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
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadowColor: HexColor.fromHex(CardShadow),
        color: HexColor.fromHex(DarkBackground),
        child: Container(
          padding: EdgeInsets.all(8),
          child: Text("randon"),
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
      padding: const EdgeInsets.all(16.0),
    );
  }
}
