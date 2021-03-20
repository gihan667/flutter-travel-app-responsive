import 'package:flutter/material.dart';
import 'package:travel_app/Models/Place.dart';
import 'package:travel_app/Screens/details/components/place_image.dart';
import 'package:travel_app/Screens/details/components/place_information.dart';
import 'package:travel_app/components/app_bar.dart';
import 'package:travel_app/components/custom_back_button.dart';

class DetailsScreen extends StatelessWidget {
  final Place place;

  const DetailsScreen({Key key, this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: buildAppBar(
        context,
        title: '',
        actions: [],
        leading: CustomBackButton(
          tapEvent: () {
            Navigator.pop(context);
          },
        )
      ),
      body: Stack(
        children: [
          PlaceImage(place: place),

          PlaceInformation(place: place)
        ],
      ),
    );
  }
}