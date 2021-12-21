import 'package:cred/core/AppConstants.dart';
import 'package:cred/core/Extensions.dart';
import 'package:cred/models/HomeAdvModel.dart';
import 'package:cred/ui/pages/home/HomePageController.dart';
import 'package:cred/ui/widgets/CreditScoreWidget.dart';
import 'package:cred/ui/widgets/HomeAdvCardWidget.dart';
import 'package:cred/ui/widgets/Loader.dart';
import 'package:cred/ui/widgets/NewCCWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _toolbarHeight = 90.0;
    final controller = Get.put(HomePageController());

    final _appBarTextStyle = TextStyle(
        color: HexColor.fromHex(TextGray),
        fontWeight: FontWeight.bold
    );

    final _avatarStyle = NeumorphicStyle(
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.circle(),
        depth: 18,
        color: Colors.black54,
        lightSource: LightSource.topLeft,
        shadowDarkColor: HexColor.fromHex(DarkBackground),
        shadowLightColor: HexColor.fromHex(DarkBackground),
        border: NeumorphicBorder(color: Colors.black87, width: 6.0)
    );

    final _notificationStyle = NeumorphicStyle(
        shape: NeumorphicShape.convex,
        boxShape: NeumorphicBoxShape.circle(),
        depth: 8,
        intensity: 2,
        surfaceIntensity: 0.9,
        shadowLightColor: HexColor.fromHex(ShadowGray),
        color: HexColor.fromHex(DarkBackground),
        lightSource: LightSource.topLeft,
    );

    final _storiesButton = Container(
      margin: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Neumorphic(
                style: _avatarStyle,
                margin: EdgeInsets.all(5.5),
                child: Image(image: AssetImage("assets/images/icon_doodle_left.png"), fit: BoxFit.fill,)
            ),
          ),
          Text(
            "stories",
            style: _appBarTextStyle,
          )
        ],
      ),
    );

    final _profileButton = Container(
      margin: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Neumorphic(
                style: _avatarStyle,
                margin: EdgeInsets.all(5.5),
                child: Image(image: AssetImage("assets/images/icon_doodle_right.png"), fit: BoxFit.fill,)
            ),
          ),
          Text(
            "profile",
            style: _appBarTextStyle,
          )
        ],
      ),
    );

    final _notificationButton = Container(
      width: 80.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 55, height: 55,
            child: Neumorphic(
                style: _notificationStyle,
                margin: EdgeInsets.all(4),
                child: Image.asset("assets/images/icon_alarm.png"),
                padding: const EdgeInsets.all(6),
            ),
          ),
          Text(
            "notifs",
            style: _appBarTextStyle,
          )
        ],
      ),
    );

    final _controlButton = Container(
      width: 80.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 55, height: 55,
            child: Neumorphic(
                style: _notificationStyle,
                margin: EdgeInsets.all(4),
                child: Image.asset("assets/images/icon_club.png"),
                padding: const EdgeInsets.all(8),
            ),
          ),
          Text(
            "control",
            style: _appBarTextStyle,
          )
        ],
      ),
    );

    final _homeAppBar = AppBar(
      toolbarHeight: _toolbarHeight,
      bottom: PreferredSize(
        preferredSize: Size(double.infinity, 0.1,),
        child: Divider(thickness: 1, height: 0.1, color: HexColor.fromHex(ShadowGray),)
      ),
      shadowColor: HexColor.fromHex(ExtraDarkBackground),
      leadingWidth: 80.0,
      elevation: 20,
      leading: _profileButton,
      actions: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _storiesButton,
              _notificationButton,
              _controlButton
            ],
          ),
        )
      ],
    );

    final _greetingHeader = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 32,),
          Text(
            "hello, Prateek", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 14,),
          Text(
            "here are today's", style: TextStyle(fontSize: 16, color: HexColor.fromHex(TextGray)),
          ),
          SizedBox(height: 8,),
          Text(
            "recommended actions for you", style: TextStyle(fontSize: 16, color: HexColor.fromHex(TextGray)),
          ),
          SizedBox(height: 12,),
        ]
    );

    final _claimOnPressed = (int index) {
      controller.claimCoupon(index);
    };

    return Scaffold(
      backgroundColor: HexColor.fromHex(DarkBackground),
      appBar: _homeAppBar,
      body: Container(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Obx(() =>
            controller.isLoading.isTrue ?
            Loader() :
            ListView.builder(
              itemCount: controller.homeAdvListData.value.length,
              itemBuilder: (context, index) {
                List<HomeAdvModel> list = controller.homeAdvListData.value;
                if(index == 0) { return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  _greetingHeader, HomeAdvCardModel(homeAdvModel: list[index], callback: _claimOnPressed)
                ],); }
                else { return HomeAdvCardModel(homeAdvModel: list[index], callback: _claimOnPressed); }
              },
            ),
          ),
      )
    );
  }
}
