import 'package:cred/core/Extensions.dart';
import 'package:flutter/cupertino.dart';

class BoldText extends StatefulWidget {
  const BoldText(String txt, double size, String clr,
      {Key key, this.text, this.fontSize, this.colorHexCode})
      : super(key: key);
  final String text;
  final double fontSize;
  final String colorHexCode;
  @override
  _BoldTextState createState() => _BoldTextState();
}

class _BoldTextState extends State<BoldText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        widget.text,
        style: TextStyle(
          fontSize: widget.fontSize,
          color: HexColor.fromHex(widget.colorHexCode),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
