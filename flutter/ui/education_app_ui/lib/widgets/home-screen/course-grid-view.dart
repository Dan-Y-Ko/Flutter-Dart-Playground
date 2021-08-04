import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CourseGridView extends StatelessWidget {
  const CourseGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 385.0,
      width: MediaQuery.of(context).size.width,
      child: GridView.count(
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 16.0,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            height: 185.0,
            width: 156.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Color(0xFFDBFFD9),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(16.0, 15.0, 16.0, 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Design',
                    style: TextStyle(
                      color: Color(0xFF4D2C5E),
                      fontFamily: 'Inter700',
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    '54 Lectures',
                    style: TextStyle(
                      color: Color(0xFF575E83),
                      fontFamily: 'Inter400',
                      fontSize: 12.0,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/Code_perspective.png',
                      height: 70.0,
                      width: 70.0,
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/fa-solid_user.svg'),
                      Text(
                        '1.2k',
                        style: TextStyle(
                          color: Color(0xFF575E83),
                          fontFamily: 'Inter400',
                          fontSize: 12.0,
                        ),
                      ),
                      SizedBox(
                        width: 63.0,
                      ),
                      SvgPicture.asset('assets/images/Star.svg'),
                      Text(
                        '1.2k',
                        style: TextStyle(
                          color: Color(0xFF575E83),
                          fontFamily: 'Inter400',
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
