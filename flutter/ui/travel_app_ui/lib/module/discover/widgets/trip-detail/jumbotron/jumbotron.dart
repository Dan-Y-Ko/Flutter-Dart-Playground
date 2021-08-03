import 'package:flutter/material.dart';

import '../../../../../core/widgets/back_arrow_button.dart';
import 'caption.dart';

class Jumbotron extends StatelessWidget {
  const Jumbotron({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 5.0),
          height: 450.0,
          width: 366.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(36.0),
            ),
            image: DecorationImage(
              image: AssetImage('assets/images/greenland.jpg'),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                offset: Offset(0, 0),
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(0, 0),
              ),
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                offset: Offset(0, 17.0),
                blurRadius: 94.0,
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(0, 0),
              ),
            ],
          ),
        ),
        Positioned(
          left: 20.0,
          top: 20.0,
          child: BackArrow(),
        ),
        Positioned(
          bottom: 32.0,
          left: 35.0,
          child: Caption(),
        ),
      ],
    );
  }
}
