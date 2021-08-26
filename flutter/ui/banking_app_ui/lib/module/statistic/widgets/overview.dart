import '../../../core/utils/theme/theme.dart';
import 'up-arrow-button.dart';
import 'package:flutter/material.dart';

class Overview extends StatelessWidget {
  const Overview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18.0, 16.0, 25.0, 0.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Overview',
              style: TextStyle(
                color: AppTheme().secondaryText,
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
              OverviewContainer(),
              SizedBox(
                width: 31.0,
              ),
              OverviewContainer(),
            ],
          ),
        ],
      ),
    );
  }
}

class OverviewContainer extends StatelessWidget {
  const OverviewContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 131.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        gradient: LinearGradient(
          colors: [AppTheme().secondaryUI!, AppTheme().tertiaryUI!],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(19.0, 19.0, 25.0, 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UpArrowButton(),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Income',
              style: TextStyle(
                color: AppTheme().primaryText,
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '\$150000.0000',
              style: TextStyle(
                color: AppTheme().primaryText,
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
