import 'package:flutter/material.dart';

import '../utils/theme/theme.dart';
import 'button.dart';
import 'custom-icon-button.dart';
import 'gradient-button.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'custom-slider.dart';

class TopupInput extends StatelessWidget {
  static const List<String> priceList = [
    '\$5',
    '\$10',
    '\$20',
    '\$30',
    '\$50',
    '\$100',
    '\$200',
    '\$500',
  ];

  final void Function(BuildContext, int?) onTap;

  const TopupInput({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 501.0,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25.0, 10.0, 24.0, 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 18.0),
                    width: 42.0,
                    height: 5.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(5.0),
                      color: AppTheme().primaryText,
                    ),
                  ),
                ],
              ),
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
              SizedBox(
                height: 31.0,
              ),
              SizedBox(
                height: 165.0,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 16.0,
                    crossAxisSpacing: 18.0,
                  ),
                  itemCount: priceList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 68.0,
                      height: 68.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: AppTheme().primaryBackground,
                          gradient: index == priceList.length - 1
                              ? RadialGradient(
                                  colors: [
                                    AppTheme().secondaryUI!,
                                    AppTheme().primaryUI!,
                                  ],
                                )
                              : null),
                      child: Center(
                        child: Text(
                          '${priceList[index]}',
                          style: TextStyle(
                            color: AppTheme().primaryText,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  CustomButton(
                    text: 'Cancel',
                    borderRadius: BorderRadius.circular(10.0),
                    backgroundColor: AppTheme().primaryBackground!,
                    padding: EdgeInsets.zero,
                    onPress: (context, id) {
                      Navigator.of(context).pop();
                    },
                    width: 107.0,
                    height: 52.0,
                  ),
                  SizedBox(
                    width: 19.0,
                  ),
                  Expanded(
                    child: GradientButton(
                      text: 'Confirm',
                      padding: EdgeInsets.zero,
                      onPress: onTap,
                      icon: SvgPicture.asset(
                          'assets/images/confirm_button_icon.svg'),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
