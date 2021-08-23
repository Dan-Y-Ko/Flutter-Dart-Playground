import 'package:banking_app_ui/core/utils/theme/theme.dart';
import 'package:banking_app_ui/core/widgets/custom-icon-button.dart';
import 'package:flutter/material.dart';

import 'custom-slider.dart';

class TopupInput extends StatefulWidget {
  const TopupInput({Key? key}) : super(key: key);

  @override
  _TopupInputState createState() => _TopupInputState();
}

class _TopupInputState extends State<TopupInput> {
  var slider_value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 501.0,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25.0, 33.0, 24.0, 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Amount',
                style: TextStyle(
                  color: AppTheme().primaryText,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconButton(
                    height: 45.0,
                    width: 45.0,
                    padding: EdgeInsets.zero,
                    asset: Icon(
                      Icons.add,
                      color: AppTheme().primaryText,
                    ),
                    color: AppTheme().primaryBackground,
                    borderRadius: BorderRadius.circular(20.0),
                    onTap: () {},
                  ),
                  Text(
                    '\$500',
                    style: TextStyle(
                      color: AppTheme().secondaryText,
                      fontSize: 29.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  CustomIconButton(
                    height: 45.0,
                    width: 45.0,
                    padding: EdgeInsets.zero,
                    asset: Icon(
                      Icons.remove,
                      color: AppTheme().primaryText,
                    ),
                    color: AppTheme().primaryBackground,
                    borderRadius: BorderRadius.circular(20.0),
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 27.0,
              ),
              CustomSlider(),
            ],
          ),
        ),
      ),
    );
  }
}
