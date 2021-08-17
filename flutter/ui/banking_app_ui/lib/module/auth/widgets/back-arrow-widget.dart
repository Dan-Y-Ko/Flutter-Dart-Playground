import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/theme/theme.dart';
import '../../../core/widgets/custom-icon-button.dart';

class BackArrowButton extends StatelessWidget {
  const BackArrowButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
      height: 45.0,
      width: 45.0,
      color: AppTheme().tertiaryUI,
      padding: EdgeInsets.all(15.0),
      borderRadius: BorderRadius.all(
        Radius.circular(18.0),
      ),
      onTap: () {
        Navigator.of(context).pop();
      },
      asset: SvgPicture.asset(
        'assets/images/arrow_left.svg',
      ),
    );
  }
}
