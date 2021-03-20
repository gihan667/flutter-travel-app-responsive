import 'package:flutter/material.dart';
import 'package:travel_app/Screens/home/home.dart';
import 'package:travel_app/Screens/welcome/components/welcome_button.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/responsive.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: isLandscape(context) ? EdgeInsets.symmetric(vertical: 38, horizontal: 72) : EdgeInsets.all(38),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Winter\n" + "Vacation Trips",
            style: TextStyle(
              fontSize: isTab(context) ? 45 : 36,
              fontWeight: FontWeight.w700,
              color: kTextColor
            ),
          ),

          SizedBox(height: 25),

          Text(
            'Enjoy your winter vacations with warmth and amazing sightseeing on the mountains. Enjoy the best experience with us!',
            style: TextStyle(
              fontSize: isTab(context) ? 24 : 16,
              color: kTextColor
            ),
          ),

          SizedBox(height: 40),

          WelcomeButton(
            tapEvent: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          )
        ],
      ),
    );
  }
}