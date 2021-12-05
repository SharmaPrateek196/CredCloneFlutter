import 'package:flutter/material.dart';

class CentralPage extends StatelessWidget {
  const CentralPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Central", style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
