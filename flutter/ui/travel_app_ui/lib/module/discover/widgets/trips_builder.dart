import 'package:flutter/material.dart';
import 'package:travel_app_ui/module/discover/models/trips.dart';

class TripsBuilder extends StatelessWidget {
  const TripsBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 282.0,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        clipBehavior: Clip.none,
        itemCount: trips.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 225.0,
            height: 282.0,
            margin: EdgeInsets.only(right: 20.0),
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                  blurRadius: 94.0,
                  offset: Offset(0, 17.0),
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  height: 187.0,
                  width: 203.0,
                  margin: EdgeInsets.only(top: 11.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        24.0,
                      ),
                    ),
                    image: DecorationImage(
                      image: AssetImage(trips[index].imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text('asdasd'),
              ],
            ),
          );
        },
      ),
    );
  }
}
