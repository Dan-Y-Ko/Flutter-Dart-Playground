import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/course.dart';

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
          for (var i = 0; i < courses.length; i++)
            CourseCard(
              title: courses[i].title,
              numLecture: courses[i].numLecture,
              imageUrl: courses[i].imageUrl,
              numStudents: courses[i].numStudents,
              rating: courses[i].rating,
              color: courses[i].color,
            ),
        ],
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  const CourseCard({
    Key? key,
    required this.title,
    required this.numLecture,
    required this.imageUrl,
    required this.numStudents,
    required this.rating,
    required this.color,
  }) : super(key: key);

  final String title;
  final int numLecture;
  final String imageUrl;
  final String numStudents;
  final double rating;
  final String color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185.0,
      width: 156.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color(
          int.parse('0xFF$color'),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(16.0, 15.0, 16.0, 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
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
              '$numLecture Lectures',
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
                imageUrl,
                height: 70.0,
                width: 70.0,
              ),
            ),
            Row(
              children: [
                SvgPicture.asset('assets/images/fa-solid_user.svg'),
                Text(
                  numStudents,
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
                  '$rating',
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
    );
  }
}
