import 'package:education_app_ui/models/subject.dart';
import 'package:flutter/material.dart';

class CourseList extends StatelessWidget {
  const CourseList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        children: [
          for (var i = 0; i < subjects.length; i++)
            i == 0
                ? Padding(
                    padding: const EdgeInsets.only(right: 13.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(subjects[i].title),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFE46414),
                        textStyle: TextStyle(
                          fontFamily: 'Inter400',
                          fontSize: 15.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(right: 13.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(subjects[i].title),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Color(0xFF575E83),
                        textStyle: TextStyle(
                          fontFamily: 'Inter400',
                          fontSize: 15.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
        ],
      ),
    );
  }
}

// ButtonBar(
//       mainAxisSize: MainAxisSize.min,
//       children: [
        // for (var i = 0; i < subjects.length; i++)
        //   ElevatedButton(
        //     onPressed: () {},
        //     child: Text(subjects[i].title),
        //     style: ElevatedButton.styleFrom(
        //       primary: Colors.white,
        //       onPrimary: Color(0xFF575E83),
        //       textStyle: TextStyle(
        //         fontFamily: 'Inter400',
        //         fontSize: 15.0,
        //       ),
        //       shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(10.0),
        //       ),
        //     ),
        //   ),
//       ],
//     );
