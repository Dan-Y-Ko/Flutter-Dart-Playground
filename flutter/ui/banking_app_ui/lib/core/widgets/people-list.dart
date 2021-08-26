import 'package:flutter/material.dart';

import '../utils/theme/theme.dart';

class PeopleList extends StatelessWidget {
  const PeopleList({
    Key? key,
    required this.avatarUrl,
    required this.name,
    this.gradient,
  }) : super(key: key);

  final String avatarUrl;
  final String name;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52.0,
      height: 71.0,
      child: Column(
        children: [
          Container(
            height: 52.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(10.0),
              gradient: name == 'Add'
                  ? LinearGradient(
                      colors: [
                        AppTheme().tertiaryUI!,
                        AppTheme().secondaryUI!,
                      ],
                    )
                  : null,
              image: DecorationImage(
                image: AssetImage(
                  avatarUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            name,
            style: TextStyle(
              color: AppTheme().primaryText,
              fontSize: 10.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
