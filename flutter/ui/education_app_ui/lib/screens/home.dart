import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/home-screen/course-grid-view.dart';
import '../widgets/home-screen/header.dart';
import '../widgets/home-screen/search.dart';
import '../widgets/home-screen/subject-list.dart';

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
                Header(),
                SizedBox(
                  height: 36.0,
                ),
                Search(),
                SizedBox(
                  height: 26.0,
                ),
                SubjectList(),
                SizedBox(
                  height: 26.0,
                ),
                CourseGridView(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        child: BottomNavigationBar(
          backgroundColor: Color(0xFF4D2C5E),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFFEFE295),
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(5.0),
                child: SvgPicture.asset('assets/images/home.svg'),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(5.0),
                child: SvgPicture.asset('assets/images/document.svg'),
              ),
              label: 'My Courses',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(5.0),
                child: SvgPicture.asset('assets/images/bookmark.svg'),
              ),
              label: 'Bookmark',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(5.0),
                child: SvgPicture.asset('assets/images/user.svg'),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
