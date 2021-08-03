import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Overview',
          style: TextStyle(
            color: Color(0xFF222222),
            fontFamily: 'Poppins600',
            fontSize: 24.0,
          ),
        ),
        Text(
          'Amet quis mauris, blandit risus non orci feugiat cras fusce. Ut lacus, dis gravida facilisi est. Elit lorem urna cursus feugiat erat lorem.',
          style: TextStyle(
            color: Color(0xFF888D9D),
            fontFamily: 'DMSans400',
            fontSize: 15.0,
          ),
        ),
      ],
    );
  }
}
