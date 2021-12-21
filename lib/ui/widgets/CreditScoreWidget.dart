import 'package:cred/core/AppConstants.dart';
import 'package:cred/core/Extensions.dart';
import 'package:cred/core/GlobalActions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CreditScoreLayout extends StatelessWidget {
  const CreditScoreLayout({Key key, @required this.csProviderLogoPath}) : super(key: key);
  final String csProviderLogoPath;

  @override
  Widget build(BuildContext context) {
    final _refreshTextStyle = TextStyle(
      color: HexColor.fromHex(RefreshTextGray),
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5
    );

    final _refreshTextRow = Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.circle, size: 28,),
          SizedBox(width: 6,),
          Text("CREDIT SCORE REFRESH AVAILABLE", style: _refreshTextStyle,)
        ],
      ),
    );

    final _excellentText = Text(
      "EXCELLENT",
      style: TextStyle(
        color: HexColor.fromHex(Green),
        fontWeight: FontWeight.bold,
        fontSize: 17,
        letterSpacing: 0.6
      ),
    );

    final _descText = Text(
      "review your entire credit activity",
      style: TextStyle(
          color: Colors.white70,
          fontWeight: FontWeight.w500,
          fontSize: 18,
          letterSpacing: 0.6
      ),
    );

    final _updateDateText = Text(
      "updated on 10 Dec '21",
      style: TextStyle(
          color: HexColor.fromHex(LightGrayText),
          fontWeight: FontWeight.w500,
          fontSize: 16,
          letterSpacing: 0.6
      ),
    );

    final _viewReportButton = Flexible(
      child: NeumorphicButton(
        padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 24.0),
        style: NeumorphicStyle(
            color: HexColor.fromHex(PayNowButtonBlue),
            shape: NeumorphicShape.convex,
            depth: 13,
            intensity: 0.38,
            surfaceIntensity: 0.2,
            lightSource: LightSource.topLeft,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(40)),
            border: NeumorphicBorder(color: Colors.black, width: 4.5)
        ),
        onPressed: (){ notImplementedSnackbar; },
        child: Text(
          "View report",
          style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
              wordSpacing: 1.5
          ),
        ),
      ),
    );

    _creditScoreUpperRightDesign() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _excellentText,
          SizedBox(height: 12,),
          _descText,
          SizedBox(height: 14,),
          _updateDateText,
          SizedBox(height: 36,),
          _viewReportButton
        ],
      );
    }

    _creditScoreUpperLeftDesign(String scoreProviderLogoPath) {
      return Image(
        image: AssetImage(scoreProviderLogoPath),
        fit: BoxFit.fill,
      );
    }

    return Container(
        padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
        margin: const EdgeInsets.all(8),
        child: Neumorphic(
          //padding: const EdgeInsets.all(8),
          style: NeumorphicStyle(
              depth: 4,
              intensity: 0.55,
              shape: NeumorphicShape.concave,
              lightSource: LightSource.topLeft,
              shadowDarkColor: Colors.black54,
              color: HexColor.fromHex(Grey),
              //border: NeumorphicBorder(color: HexColor.fromHex(DarkBackground), width: 2.5),
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.all(Radius.circular(16)))
          ),
          child: Container(
            height: 330,
            color: HexColor.fromHex(CreditScoreGrayBg),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(top: 36, bottom: 16),
                    clipBehavior: Clip.hardEdge,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12),
                      color: HexColor.fromHex(CreditScoreDarkBg)
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 3,
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              child: _creditScoreUpperLeftDesign(csProviderLogoPath),
                            )
                        ),
                        Expanded(
                            flex: 4,
                            child: Container(
                              child: _creditScoreUpperRightDesign(),
                            )
                        )
                      ],
                    ),
                  ),
                ),
                _refreshTextRow
              ],
            ),
          )
        )
    );
  }
}