import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/responsive.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({
    Key key,
    @required this.tapEvent
  }) : super(key: key);

  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: kPrimaryColor
        ),
        width: isTab(context) ? 300 : 200,
        height: isTab(context) ? 70 : 50,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Let's Go!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: isTab(context) ? 25 : 16
                ),
              ),

              Image.asset(
                'assets/images/arrow.png',
                fit: BoxFit.scaleDown,
                height: isTab(context) ? 30 : 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}