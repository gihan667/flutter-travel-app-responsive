import 'package:flutter/material.dart';
import 'package:travel_app/responsive.dart';

class Recommended extends StatelessWidget {
  const Recommended({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: isLandscape(context) ? EdgeInsets.symmetric(horizontal: 50) : EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Text(
              'Recommended',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: isTab(context) ? 24 : 18
              ),
            ),

            Spacer(),

            TextButton(
              onPressed: () {},
              child: Text(
                'View All',
                style: TextStyle(
                  fontSize: isTab(context) ? 20 : 14
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}