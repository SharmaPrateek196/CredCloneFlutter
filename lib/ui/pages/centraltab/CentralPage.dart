import 'package:cred/core/AppConstants.dart';
import 'package:cred/core/BottomBarClipper.dart';
import 'package:cred/core/Extensions.dart';
import 'package:cred/ui/widgets/CreditCardWidget.dart';
import 'package:flutter/material.dart';

class CentralPage extends StatelessWidget {
  const CentralPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.85,
      child: Stack(
        children: [
          SingleChildScrollView(
              child: Column(
                children: [
                  CreditCardLayout(),
                  CreditCardLayout(),
                  CreditCardLayout(),
                  CreditCardLayout(),
                ],
              )
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  ClipPath(
                    clipper: BottomSheetCalcelClipper(),
                    child: Container(
                      height: 90,
                      color: HexColor.fromHex(DarkBackground),
                    ),
                  ),
                  IconButton(icon: Icon(Icons.cancel, color: Colors.white30,), onPressed: (){}, iconSize: 55,),
                ],
              ),
            ),
          ),
        ]
      )
    );
  }
}
