import 'package:flutter/material.dart';

import '../models/trips.dart';
import 'hearts.dart';

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
                trips[index].isFavorite
                    ? Stack(
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
                          Positioned(
                            top: 20.0,
                            right: 12.0,
                            child: Hearts(),
                          ),
                        ],
                      )
                    : Container(
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
                SizedBox(
                  height: 16.0,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 23.0),
                    child: Text(
                      trips[index].title,
                      style: TextStyle(
                        fontFamily: 'DMSans700',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 23.0),
                    child: Text(
                      trips[index].caption,
                      style: TextStyle(
                        fontFamily: 'DMSans500',
                        fontSize: 12.0,
                        color: Color(0xFFACB1C2),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
