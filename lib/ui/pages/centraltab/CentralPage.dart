import 'package:cred/core/AppConstants.dart';
import 'package:cred/core/BottomBarClipper.dart';
import 'package:cred/core/Extensions.dart';
import 'package:cred/data/fakedata/AllFakeDataFile.dart';
import 'package:cred/ui/widgets/CreditCardWidget.dart';
import 'package:flutter/material.dart';

class CentralPage extends StatelessWidget {
  const CentralPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _recommendedTextStyle = TextStyle(
        color: HexColor.fromHex(TextGray),
        fontSize: 16,
        fontWeight: FontWeight.bold
    );

    final _cardsTextStyle = TextStyle(
        color: HexColor.fromHex(TextGray),
        fontWeight: FontWeight.w500,
        letterSpacing: 2
    );

    Widget _tile(String title, String assetPath) {
      return SizedBox(
        width: MediaQuery.of(context).size.width/5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.eleven_mp, size: 40, color: Colors.black),
            SizedBox(height: 10,),
            Text(title, style: TextStyle(fontWeight: FontWeight.w500), textAlign: TextAlign.center,)
          ],
        ),
      );
    }

    return Container(
      height: MediaQuery.of(context).size.height*0.85,
      child: Stack(
        children: [
          SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "recommended",
                      style: _recommendedTextStyle,
                    ),
                    SizedBox(height: 20,),
                    //Expanded(
                      GridView.count(
                        crossAxisCount: 4,
                        shrinkWrap: true,
                        primary: true,
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 16,
                        children: List.generate(4, (index) {
                          return _tile(bottomSheetRecommendedList[index%5], "");
                        }),
                      //),
                    ),
                    Text(
                      "CARDS",
                      style: _cardsTextStyle,
                    ),
                    SizedBox(height: 20,),
                    GridView.count(
                      crossAxisCount: 4,
                      shrinkWrap: true,
                      crossAxisSpacing: 8,
                      primary: true,
                      physics: NeverScrollableScrollPhysics(),
                      mainAxisSpacing: 16,
                      children: List.generate(12, (index) {
                        return _tile(bottomSheetRecommendedList[index%5], "");
                      }),
                    ),
                    Text(
                      "CARDS",
                      style: _cardsTextStyle,
                    ),
                    SizedBox(height: 20,),
                    GridView.count(
                      crossAxisCount: 4,
                      shrinkWrap: true,
                      crossAxisSpacing: 8,
                      primary: true,
                      physics: NeverScrollableScrollPhysics(),
                      mainAxisSpacing: 16,
                      children: List.generate(14, (index) {
                        return _tile(bottomSheetRecommendedList[index%5], "");
                      }),
                    ),
                  ],
                ),
              ),
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
                  IconButton(
                    icon: Icon(Icons.cancel, color: Colors.white30,),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    iconSize: 55,),
                ],
              ),
            ),
          ),
        ]
      )
    );
  }
}
