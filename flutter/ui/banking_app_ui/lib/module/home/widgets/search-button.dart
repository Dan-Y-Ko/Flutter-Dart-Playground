import 'package:banking_app_ui/core/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.0,
      height: 41.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        gradient: LinearGradient(
          colors: [AppTheme().secondaryUI!, AppTheme().primaryUI!],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Filter',
            style: TextStyle(
              color: AppTheme().primaryText,
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            width: 9.0,
          ),
          SvgPicture.asset('assets/images/some_icon2.svg'),
        ],
      ),
    );
  }
}
