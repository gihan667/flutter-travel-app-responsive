import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/responsive.dart';
import 'package:travel_app/util.dart';

class LikedButton extends StatelessWidget {
  const LikedButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isTab(context) ? 50 : 30,
      height: isTab(context) ? 50 : 30,
      decoration: likedWidgetDecoration,

      child: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/heart.svg',
          width: isTab(context) ? 20 : 10,
          height: isTab(context) ? 20 : 10,
        ),
        onPressed: () {},
      ),
    );
  }
}