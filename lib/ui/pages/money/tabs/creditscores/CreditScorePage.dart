import 'package:cred/ui/widgets/CreditScoreWidget.dart';
import 'package:flutter/material.dart';

class CreditScorePage extends StatelessWidget {
  const CreditScorePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 36,),
            Text("all about your credit score", style: _headingTextStyle, textAlign: TextAlign.center,),
            SizedBox(height: 16,),
            SizedBox(
              width: 240,
              child: Text("get insights and check your credit standing", style: _descTextStyle, textAlign: TextAlign.center),
            ),
            SizedBox(height: 16,),
            CreditScoreLayout(csProviderLogoPath: "assets/images/experian_cs.png"),
            CreditScoreLayout(csProviderLogoPath: "assets/images/crif_cs.png"),
          ],
        ),
      ),
    );
  }

  final _headingTextStyle = const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white70);
  final _descTextStyle = const TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white54);
}
