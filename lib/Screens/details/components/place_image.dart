import 'package:flutter/material.dart';
import 'package:travel_app/Models/Place.dart';

class PlaceImage extends StatelessWidget {
  const PlaceImage({
    Key key,
    @required this.place,
  }) : super(key: key);

  final Place place;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.4,
      child: Hero(
        tag: place.id,
        child: Image.asset(
          place.image,
          height: size.height * 0.4,
          width: size.width,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}