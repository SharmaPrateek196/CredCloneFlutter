import 'package:cred/core/AppConstants.dart';
import 'package:cred/core/Extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _toolbarHeight = 90.0;

    final _appBarTextStyle = TextStyle(
        color: HexColor.fromHex(TextGray),
        fontWeight: FontWeight.bold
    );

    final _avatarStyle = NeumorphicStyle(
        shape: NeumorphicShape.convex,
        boxShape: NeumorphicBoxShape.circle(),
        depth: 18,
        color: HexColor.fromHex(DarkBackground),
        lightSource: LightSource.topLeft,
        shadowDarkColor: HexColor.fromHex(DarkBackground),
        shadowLightColor: HexColor.fromHex(DarkBackground),
        border: NeumorphicBorder(color: HexColor.fromHex(DarkBackground), width: 6.0)
    );

    final _notificationStyle = NeumorphicStyle(
        shape: NeumorphicShape.convex,
        boxShape: NeumorphicBoxShape.circle(),
        depth: 8,
        intensity: 4,
        shadowLightColor: HexColor.fromHex(ShadowGray),
        color: HexColor.fromHex(DarkBackground),
        lightSource: LightSource.topLeft,
    );

    final _storiesButton = SizedBox(
      width: 80.0,
      height: _toolbarHeight,
      child: Container(
        margin: EdgeInsets.all(4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 60, height: 60,
              child: Neumorphic(
                  style: _avatarStyle,
                  margin: EdgeInsets.all(4),
                  child: Image(image: AssetImage("assets/images/icici.png"), fit: BoxFit.fill,)
              ),
            ),
            Text(
              "stories",
              style: _appBarTextStyle,
            )
          ],
        ),
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
                child: Icon(Icons.alarm)
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
                child: Icon(Icons.ten_k)
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
      leadingWidth: 80.0,
      elevation: 9.0,
      leading: Container(
        margin: EdgeInsets.all(4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Neumorphic(
                style: _avatarStyle,
                margin: EdgeInsets.all(4),
                child: Image.asset("assets/images/icici.png")
            ),
            Text(
              "profile",
              style: _appBarTextStyle,
            )
          ],
        ),
      ),
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

    return SafeArea(
        child: Scaffold(
          backgroundColor: HexColor.fromHex(DarkBackground),
          appBar: _homeAppBar,
        )
    );
  }
}
