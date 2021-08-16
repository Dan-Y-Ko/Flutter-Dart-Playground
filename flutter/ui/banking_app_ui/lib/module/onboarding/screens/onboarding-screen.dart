import 'package:banking_app_ui/module/onboarding/widgets/progress-indicator-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/utils/theme/theme.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  static const List<double> startAngles = [-2 * 3.14 / 3, 0.0, 2 * 3.14 / 3];
  int index = 0;

  @override
  void initState() {
    super.initState();

    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(
        [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    super.dispose();
  }

  handlePress() {
    setState(() {
      if (index < 2) {
        index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme().primaryBackground,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 302.0,
                height: 282.0,
                child: Image.asset('assets/images/onboarding_bg_1.png'),
              ),
            ),
            SizedBox(height: 79.0),
            Text(
              'Get Bank ID',
              style: TextStyle(
                fontWeight: AppTheme().fontWeights[2],
                fontSize: AppTheme().fontSizes[10],
                color: AppTheme().primaryText,
              ),
            ),
            SizedBox(
              height: 13.0,
            ),
            SizedBox(
              width: 302.0,
              child: Text(
                'Our new service makes it easy for you to work anywhere, there are new features will ready help you.',
                style: TextStyle(
                  fontWeight: AppTheme().fontWeights[1],
                  fontSize: AppTheme().fontSizes[6],
                  color: AppTheme().primaryText,
                  height: 1.7,
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      width: 20.0,
                      height: 7.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors: [
                            AppTheme().primaryUI!,
                            AppTheme().secondaryUI!,
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Container(
                      width: 11.0,
                      height: 6.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: AppTheme().quaternaryUI,
                      ),
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Container(
                      width: 11.0,
                      height: 6.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: AppTheme().quaternaryUI,
                      ),
                    ),
                  ],
                ),
                ProgressIndicatorButton(
                    progress: 0.4,
                    startAngle: startAngles[index],
                    onTap: handlePress),
              ],
            )
          ],
        ),
      ),
    );
  }
}
