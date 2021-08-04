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
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        child: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 45.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/download.jpg'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                SizedBox(
                  height: 45.0,
                  width: 240.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Enroll Now',
                      style: TextStyle(fontFamily: 'Inter700', fontSize: 16.0),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFE46414),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
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
