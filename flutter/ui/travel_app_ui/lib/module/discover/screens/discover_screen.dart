import 'package:flutter/material.dart';

import '../widgets/bottom_app_bar.dart';
import '../widgets/category.dart';
import '../widgets/header.dart';
import '../widgets/search.dart';
import '../widgets/trips_builder.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 33.0),
              child: Column(
                children: [
                  Header(),
                  SizedBox(
                    height: 30.0,
                  ),
                  Search(),
                  SizedBox(
                    height: 30.0,
                  ),
                  Category(text: 'Popular Trips'),
                  SizedBox(
                    height: 12.0,
                  ),
                  TripsBuilder(),
                  SizedBox(
                    height: 32.0,
                  ),
                  Category(text: 'Popular Categories'),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}

// Padding(
//         padding: const EdgeInsets.only(left: 30, bottom: 33.0, right: 30.0),
//         child: ClipRRect(
//           borderRadius: BorderRadius.all(
//             Radius.circular(30.0),
//           ),
//           child: BottomAppBar(
//             color: Color(0xFF222222),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                   height: 60.0,
//                   child: SvgPicture.asset(
//                     'assets/images/home.svg',
//                   ),
//                 ),
//                 Container(
//                   height: 60.0,
//                   child: SvgPicture.asset(
//                     'assets/images/discover.svg',
//                   ),
//                 ),
//                 Container(
//                   height: 60.0,
//                   child: SvgPicture.asset(
//                     'assets/images/heart.svg',
//                   ),
//                 ),
//                 Container(
//                   height: 60.0,
//                   child: SvgPicture.asset(
//                     'assets/images/user.svg',
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),