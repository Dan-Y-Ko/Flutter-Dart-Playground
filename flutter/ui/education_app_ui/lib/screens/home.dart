import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF9EF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                Container(
                  height: 160.0,
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/images/Menu.svg'),
                          ),
                          Container(
                            height: 70.0,
                            width: 70.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                image: AssetImage('assets/images/Profile.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ],
                      ),
                      Positioned(
                        top: 85.0,
                        left: 10.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hey Alex',
                              style: TextStyle(
                                color: Color(0xFF4D2C5E),
                                fontFamily: 'Inter600',
                                fontSize: 30.0,
                              ),
                            ),
                            SizedBox(
                              height: 16.0,
                            ),
                            Text(
                              'Find a course you want to learn',
                              style: TextStyle(
                                color: Color(0xFF575E83),
                                fontFamily: 'Inter400',
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
