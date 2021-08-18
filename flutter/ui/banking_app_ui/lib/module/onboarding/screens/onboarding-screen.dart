import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/utils/theme/theme.dart';
import '../../../core/widgets/custom_indicator.dart';
import '../../auth/screens/index.dart';
import '../models/screen-data.dart';
import '../widgets/progress-indicator-button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _index = 0;

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
      if (_index < 2) {
        _index++;
      } else {
        Navigator.of(context).pushNamed(SignInAndSignUpScreen.routeName);
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
                child: Image.asset(screenData[_index].image),
              ),
            ),
            SizedBox(height: 79.0),
            Text(
              screenData[_index].headline,
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
                screenData[_index].description,
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
                CustomIndicator(
                  index: _index,
                  data: screenData,
                ),
                ProgressIndicatorButton(
                  progress: screenData[_index].progress,
                  startAngle: screenData[_index].startAngle,
                  onTap: handlePress,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
