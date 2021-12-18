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
          children: [
            Image.asset("assets/images/icon_start.png", width: 40, height: 40,),
            SizedBox(height: 4,),
            Expanded(
                child: Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                )
            )
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
                  crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        crossAxisSpacing: 4,
                        mainAxisSpacing: 8,
                        children: List.generate(4, (index) {
                          return _tile(bottomSheetRecommendedList[index%5], "");
                        }),
                      //),
                    ),
                    SizedBox(height: 10,),
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
                    SizedBox(height: 10,),
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
                alignment: Alignment.center,
                children: [
                  ClipPath(
                    clipper: BottomSheetCalcelClipper(),
                    child: Container(
                      height: 100,
                      color: HexColor.fromHex(DarkBackground),
                    ),
                  ),
                  IconButton(
                    icon: Image.asset("assets/images/icon_cancel3.png", width:80, height: 80,),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ]
      )
    );
  }
}
