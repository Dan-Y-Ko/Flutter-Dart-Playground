import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/theme/theme.dart';
import '../../../core/widgets/custom-icon-button.dart';

class UpArrowButton extends StatelessWidget {
  const UpArrowButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
      height: 38.0,
      width: 38.0,
      color: AppTheme().secondaryUI,
      padding: EdgeInsets.all(12.0),
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      onTap: () {},
      asset: SvgPicture.asset(
        'assets/images/up_arrow.svg',
      ),
      inkwellRadius: BorderRadius.all(
        Radius.circular(
          10.0,
        ),
      ),
    );
  }
}
