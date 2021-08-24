import 'package:banking_app_ui/core/widgets/bottom-modal-sheet-container.dart';
import 'package:banking_app_ui/core/widgets/topup-input.dart';
import 'package:flutter/material.dart';

import '../utils/theme/theme.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
          backgroundColor: AppTheme().tertiaryBackground,
          builder: (BuildContext context) {
            return BottomModalSheetContainer();
          },
        );
      },
      child: Container(
        width: 300.0,
        height: 194.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: LinearGradient(
            colors: [AppTheme().secondaryUI!, AppTheme().tertiaryUI!],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 23.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Kawsar Ahmed',
                    style: TextStyle(
                      color: AppTheme().primaryText,
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0,
                    ),
                  ),
                  Image.asset('assets/images/circles.png'),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                  Image.asset('assets/images/card_number.png'),
                ],
              ),
              SizedBox(
                height: 37.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardBottomText(
                    topText: 'CARD BALANCE',
                    bottomText: '\$16000',
                  ),
                  CardBottomText(
                    topText: 'VALID THRU',
                    bottomText: '02/10',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardBottomText extends StatelessWidget {
  const CardBottomText({
    Key? key,
    required this.topText,
    required this.bottomText,
  }) : super(key: key);

  final String topText;
  final String bottomText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          topText,
          style: TextStyle(
            color: AppTheme().primaryText,
            fontWeight: FontWeight.w600,
            fontSize: 8.0,
          ),
        ),
        SizedBox(
          height: 3.0,
        ),
        Text(
          bottomText,
          style: TextStyle(
            color: AppTheme().primaryText,
            fontWeight: FontWeight.w600,
            fontSize: 10.0,
          ),
        ),
      ],
    );
  }
}
