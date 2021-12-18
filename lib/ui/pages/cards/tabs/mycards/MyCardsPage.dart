import 'package:cred/core/AppConstants.dart';
import 'package:cred/core/Extensions.dart';
import 'package:cred/core/GlobalActions.dart';
import 'package:cred/models/CreditCardModel.dart';
import 'package:cred/ui/pages/cards/tabs/mycards/MyCardsController.dart';
import 'package:cred/ui/widgets/Loader.dart';
import 'package:cred/ui/widgets/NewCCWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

class MyCardsPage extends StatelessWidget {
  const MyCardsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          AddCardRow(),
        ],
      )
    );
  }
}

class AddCardRow extends StatelessWidget {
  const AddCardRow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MyCardsController>();

    final _addCardRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          " your cards",
          style: TextStyle(
              fontSize: 17,
              color: HexColor.fromHex(TextGray),
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
              wordSpacing: 1.5
          ),
        ),
        NeumorphicButton(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 18.0, left: 6.0),
          margin: const EdgeInsets.only(top: 4, bottom: 4),
          style: NeumorphicStyle(
              color: HexColor.fromHex(DarkBackground),
              shape: NeumorphicShape.convex,
              surfaceIntensity: 0.15,
              depth: 13,
              intensity: 0.45,
              lightSource: LightSource.topLeft,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(40))
          ),
          onPressed: () {notImplementedSnackbar;},
          child: Row(
              children: [
                SizedBox(
                  height: 34, width: 34,
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        depth: 0.3,
                        intensity: 0.5,
                        lightSource: LightSource.bottomRight,
                        color: HexColor.fromHex(DarkBackground),
                        boxShape: NeumorphicBoxShape.circle()
                    ),
                    child: Icon(Icons.add, color: Colors.white30, size: 22,),
                  ),
                ),
                SizedBox(width: 14,),
                Text(
                  "Add card",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      wordSpacing: 1.5
                  ),
                ),
              ]
          ),
        ),
      ],
    );

    return Expanded(
      child: Container(
          child: Obx(() =>
            controller.isLoading.isTrue ?
            Loader() :
            ListView.builder(
              itemCount: controller.cardsList.value.length,
              itemBuilder: (context, index) {
                List<CreditCardModel> list = controller.cardsList.value;
                if(index == 0) { return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20,),
                    _addCardRow,
                    NewCCLayout(ccModel: list[index], callback: null)
                  ],); }
                else { return NewCCLayout(ccModel: list[index], callback: null); }
              },
            ),
          )
      ),
    );
  }
}

