import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/Models/Place.dart';
import 'package:travel_app/Screens/details/components/days_chooser.dart';
import 'package:travel_app/Screens/details/components/location.dart';
import 'package:travel_app/Screens/details/components/price_and_book.dart';
import 'package:travel_app/Screens/details/components/rating.dart';
import 'package:travel_app/components/common_button.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/responsive.dart';

class PlaceInformation extends StatelessWidget {
  const PlaceInformation({
    Key key,
    @required this.place,
  }) : super(key: key);

  final Place place;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return DelayedDisplay(
      delay: Duration(milliseconds: 100),
      fadingDuration: Duration(milliseconds: 300),
      slidingBeginOffset: const Offset(0, 1),

      child: Container(
        height: size.height * 0.7,
        width: double.infinity,
        margin: EdgeInsets.only(top: size.height * 0.35),
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
          color: Colors.white
        ),

        child: SingleChildScrollView(
          child: SafeArea(
            top: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  place.name,
                  style: TextStyle(
                    fontSize: isTab(context) ? 32 : 24,
                    fontWeight: FontWeight.bold
                  ),
                ),

                SizedBox(height: 5),

                Location(place: place),

                SizedBox(height: 10),

                Rating(place: place),

                SizedBox(height: 25),

                DaysChooser(),

                SizedBox(height: 30),

                Text(
                  'Description',
                  style: TextStyle(
                    fontSize: isTab(context) ? 28 : 20,
                    fontWeight: FontWeight.w700
                  ),
                ),

                SizedBox(height: 20),

                Text(
                  place.description,
                  style: TextStyle(
                    fontSize: isTab(context) ? 20 : 16,
                  ),
                ),

                SizedBox(height: 50),

                PriceAndBook()
              ],
            ),
          ),
        ),
      ),
    );
  }
}