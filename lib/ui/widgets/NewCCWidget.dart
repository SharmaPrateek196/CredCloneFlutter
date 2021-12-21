import 'package:cred/core/AppConstants.dart';
import 'package:cred/core/Extensions.dart';
import 'package:cred/models/CreditCardModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NewCCLayout extends StatefulWidget {
  const NewCCLayout({Key key, @required this.ccModel, @required this.callback}) : super(key: key);
  final CreditCardModel ccModel;
  final Function callback;

  @override
  State<NewCCLayout> createState() => _NewCCLayoutState();
}

class _NewCCLayoutState extends State<NewCCLayout> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
        child: Container(
          child: Neumorphic(
            style: NeumorphicStyle(
              depth: -4,
              intensity: 0.6,
              lightSource: LightSource.topLeft,
              color: HexColor.fromHex(DarkBackground),
              border: NeumorphicBorder(color: HexColor.fromHex(DarkBackground), width: 4),
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.all(Radius.circular(12)))
            ),
            child: NewCCWidget(ccModel: widget.ccModel, callback: widget.callback,),
          ),
        )
    );
  }
}

class NewCCWidget extends StatefulWidget {
  const NewCCWidget({Key key, @required this.ccModel, @required this.callback}) : super(key: key);
  final CreditCardModel ccModel;
  final Function callback;

  @override
  _NewCCWidgetState createState() => _NewCCWidgetState();
}

class _NewCCWidgetState extends State<NewCCWidget> {
  @override
  Widget build(BuildContext context) {
    var _isPaid = widget.ccModel.isPaid;
    final _onIsPaidClicked = () {
      setState((){
        _isPaid = true;
      });
      //widget.callback(widget.homeAdvModel.index);
    };

    final _divider = SizedBox(
      height: 0.1,
      width: double.infinity,
      child: Neumorphic(
        style: NeumorphicStyle(
          color: Colors.grey,
          shape: NeumorphicShape.concave,
          depth: 5,
          intensity: 0.2,
          lightSource: LightSource.topLeft,
        ),
      ),
    );

    final _cardBranding = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          widget.ccModel.bankName,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            letterSpacing: 1,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          child: Image.asset(widget.ccModel.bankPath, width: 100, alignment: Alignment.centerRight,),
          height: 30,
          width: 120,
        ),
      ],
    );

    final _cardFooter = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.ccModel.cardNumber,
                maxLines: 1,
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: 'FiraMono',
                    fontWeight: FontWeight.normal,
                    letterSpacing: 1.5
                ),
              ),
              SizedBox(height: 10,),
              Text(
                widget.ccModel.cardHolder,
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontFamily: 'FiraMono',
                    fontWeight: FontWeight.normal,
                    letterSpacing: 0.5
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          child: Image.asset(widget.ccModel.ccProviderPath),
          height: 28,
          width: 34,
        )
      ],
    );

    final _cardDebtDetailsAndActions = Container(
      margin: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "total due",
                    style: TextStyle(
                      fontSize: 16,
                      color: HexColor.fromHex(CCTextGray),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    widget.ccModel.due,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text(
                widget.ccModel.dueInDays,
                style: TextStyle(
                    fontSize: 15,
                    color: HexColor.fromHex(CreamyYellow),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    wordSpacing: 1.5
                ),
              ),
            ],
          ),
          SizedBox(height: 24,),
          Text(
            "NO HIDDEN CHARGES",
            style: TextStyle(
                fontSize: 15,
                color: HexColor.fromHex(Green),
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 1.5
            ),
          ),
          SizedBox(height: 24,),
          _divider,
          SizedBox(height: 18,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: NeumorphicButton(
                  padding: const EdgeInsets.symmetric(vertical: 17.0, horizontal: 0.0),
                  margin: const EdgeInsets.only(top: 4, bottom: 4, right: 12),
                  style: NeumorphicStyle(
                      color: HexColor.fromHex(DarkBackground),
                      shape: NeumorphicShape.convex,
                      surfaceIntensity: 0.15,
                      depth: 13,
                      intensity: 0.45,
                      lightSource: LightSource.topLeft,
                      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(40))
                  ),
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      "Manage",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Lato',
                          letterSpacing: 1,
                          wordSpacing: 1.5
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: NeumorphicButton(
                  padding: const EdgeInsets.symmetric(vertical: 19.0, horizontal: 0.0),
                  margin: const EdgeInsets.only(top: 4, bottom: 4, left: 12),
                  style: NeumorphicStyle(
                      color: HexColor.fromHex(PayNowButtonBlue),
                      shape: NeumorphicShape.convex,
                      depth: 13,
                      intensity: 0.45,
                      surfaceIntensity: 0.2,
                      lightSource: LightSource.topLeft,
                      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(40)),
                      border: NeumorphicBorder(color: HexColor.fromHex(ExtraDarkBackground), width: 4.5)
                  ),
                  onPressed: _isPaid ? null : () {_onIsPaidClicked();},
                  child: Center(
                    child: Text(
                      _isPaid ? "Paid" : "Pay Now",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Lato',
                          letterSpacing: 1,
                          wordSpacing: 1.5
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );

    return Column(
      children: [
        Container(
          height: 235,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(12)
            ),
            image: DecorationImage(
              image: Image.asset(widget.ccModel.bgPath).image,
              fit: BoxFit.fill
            ),
            color: HexColor.fromHex(CCDarkBackground)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _cardBranding,
              _cardFooter
            ],
          ),
        ),
        _cardDebtDetailsAndActions
      ],
    );
  }
}
