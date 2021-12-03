import 'package:cred/DashboardBinding.dart';
import 'package:cred/core/AppConstants.dart';
import 'package:cred/core/Extensions.dart';
import 'package:cred/pages/widgets/CreditCardWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'CRED',
      theme: ThemeData(
        primarySwatch: darkMaterialBlack,
      ),
      getPages: [
        GetPage(
          name: "/dashboard",
          page: () => MyHomePage(),
          binding: DashBoardBinding(),
        ),
      ],
      initialRoute: "/dashboard",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor.fromHex(DarkBackground),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.alarm),
      //   onPressed: () {},
      // ),
      // floatingActionButtonLocation:
      //     FloatingActionButtonLocation.miniCenterDocked,
      // bottomNavigationBar: BottomAppBar(
      //   shape: CircularNotchedRectangle(),
      //   notchMargin: 8.0,
      //   child: Row(
      //     mainAxisSize: MainAxisSize.max,
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       IconButton(icon: Icon(Icons.home), onPressed: () {}),
      //       IconButton(icon: Icon(Icons.home), onPressed: () {}),
      //       IconButton(icon: Icon(Icons.home), onPressed: () {}),
      //       IconButton(icon: Icon(Icons.home), onPressed: () {}),
      //     ],
      //   ),
      // ),
      body: ListView(
        children: [CreditCardLayout(), CreditCardLayout(), CreditCardLayout()],
      ),
    );
  }
}
