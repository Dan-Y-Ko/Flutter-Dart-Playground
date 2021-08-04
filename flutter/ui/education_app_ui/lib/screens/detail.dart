import 'package:flutter/material.dart';

import '../widgets/detail-screen/content.dart';
import '../widgets/detail-screen/header.dart';
import '../widgets/detail-screen/info.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  static const routeName = '/detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFEDC8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Header(),
                SizedBox(
                  height: 26.0,
                ),
                Info(),
                Content(),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   child: Row(
      //     children: [
      //       Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(15.0),
      //           image: DecorationImage(
      //             image: AssetImage('assets/images/download.jpg'),
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
