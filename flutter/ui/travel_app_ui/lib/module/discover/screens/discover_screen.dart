import 'package:flutter/material.dart';

//import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/widgets/bottom_app_bar.dart';
import '../widgets/category.dart';
import '../widgets/discover-screen/header/header.dart';
import '../widgets/discover-screen/popular-categories/categories_builder.dart';
import '../widgets/discover-screen/search-input/search.dart';
import '../widgets/discover-screen/trips-card/trips_builder.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 33.0),
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
                SizedBox(
                  height: 14.0,
                ),
                CategoriesBuilder(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}

// SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.only(left: 30.0, right: 30.0),
//           child: ClipRRect(
//             borderRadius: BorderRadius.all(
//               Radius.circular(30.0),
//             ),
//             child: BottomAppBar(
//               color: Color(0xFF222222),
//               child: Container(
//                 height: 88.0,
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 30.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Stack(
//                         children: [
//                           IconButton(
//                             onPressed: () {},
//                             icon: SvgPicture.asset(
//                               'assets/images/home.svg',
//                             ),
//                           ),
//                           Positioned(
//                             left: 23.0,
//                             bottom: 0,
//                             child: Image.asset('assets/images/Ellipse5.png'),
//                           ),
//                         ],
//                       ),
//                       IconButton(
//                         onPressed: () {},
//                         icon: SvgPicture.asset(
//                           'assets/images/discover.svg',
//                         ),
//                       ),
//                       IconButton(
//                         onPressed: () {},
//                         icon: SvgPicture.asset(
//                           'assets/images/heart.svg',
//                         ),
//                       ),
//                       IconButton(
//                         onPressed: () {},
//                         icon: SvgPicture.asset(
//                           'assets/images/user.svg',
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),