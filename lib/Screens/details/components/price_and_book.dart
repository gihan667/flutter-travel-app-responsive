import 'package:flutter/material.dart';
import 'package:travel_app/components/common_button.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/responsive.dart';

class PriceAndBook extends StatelessWidget {
  const PriceAndBook({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "\$400",
                style: TextStyle(
                  fontSize: isTab(context) ? 34 : 28,
                  fontWeight: FontWeight.w700,
                  color: kPrimaryColor
                )
              ),

              TextSpan(
                text: "/",
                style: TextStyle(
                  fontSize: isTab(context) ? 24 : 18,
                  color: kPrimaryColor
                )
              ),

              TextSpan(
                text: "Package",
                style: TextStyle(
                  fontSize: isTab(context) ? 22 : 16,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w800
                )
              ),
            ]
          )
        ),

        CommonButton(
          tapEvent: () {},
        )
      ],
    );
  }
}