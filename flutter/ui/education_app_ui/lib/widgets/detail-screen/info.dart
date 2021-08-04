import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 242.0,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          // Container(
          //   height: 171.0,
          //   width: 142.0,
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         'Basic Grammar',
          //         style: TextStyle(
          //           color: Color(0xFF4D2C5E),
          //           fontFamily: 'Inter700',
          //           fontSize: 30.0,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          Positioned(
            left: 200,
            child: Image.asset(
              'assets/images/book.png',
              height: 242.0,
              width: 242.0,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
