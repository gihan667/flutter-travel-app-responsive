import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:travel_app/Models/Place.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/responsive.dart';

class Rating extends StatelessWidget {
  const Rating({
    Key key,
    @required this.place,
  }) : super(key: key);

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SmoothStarRating(
          allowHalfRating: true,
          onRated: (v) {},
          starCount: 5,
          rating: place.rating,
          size: isTab(context) ? 32 : 20,
          color: kRatingStarColor,
          borderColor: kRatingStarColor,
        ),

        SizedBox(width: 5),

        Text(
          place.rating.toString(),
          style: TextStyle(
            fontSize: isTab(context) ? 20 : 12
          ),
        )
      ],
    );
  }
}