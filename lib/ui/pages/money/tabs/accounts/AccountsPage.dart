import 'package:cred/core/GlobalActions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class AccountsPage extends StatelessWidget {
  const AccountsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      child: Center(
        child: Wrap(
          children: [
            Container(
              width: double.infinity,
              color: Colors.black12,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.only(bottom: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/accounts_logo.png", width: 170, height: 170,),
                  SizedBox(height: 20,),
                  SizedBox(width: 300, child: Text("knowing your bank balance just got easier", style: _headingTextStyle, textAlign: TextAlign.center,)),
                  SizedBox(height: 16,),
                  SizedBox(width: 300, child: Text("single-click setup to track balance for all your bank accounts on CRED", style: _descTextStyle, textAlign: TextAlign.center,)),
                  SizedBox(height: 32),
                  _getEnableNowButton()
                ],
              ),
            ),
          ]
        ),
      ),
    );
  }

  final _headingTextStyle = const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white70);
  final _descTextStyle = const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white54);
  NeumorphicButton _getEnableNowButton() {
    return NeumorphicButton(
      padding: const EdgeInsets.symmetric(vertical: 17.0, horizontal: 32.0),
      style: NeumorphicStyle(
          color: Colors.white,
          shape: NeumorphicShape.convex,
          depth: 4,
          intensity: 0.38,
          surfaceIntensity: 0.2,
          lightSource: LightSource.topLeft,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(40)),
      ),
      onPressed: (){ notImplementedSnackbar; },
      child: Text(
        "Enable Now",
        style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
            wordSpacing: 1.5
        ),
      ),
    );
  }
}
