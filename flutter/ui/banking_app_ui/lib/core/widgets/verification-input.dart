import 'package:flutter/material.dart';

import '../utils/theme/theme.dart';

class VerificationInput extends StatefulWidget {
  const VerificationInput({Key? key}) : super(key: key);

  @override
  _VerificationInputState createState() => _VerificationInputState();
}

class _VerificationInputState extends State<VerificationInput> {
  late List<FocusNode> focusNodeList;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    focusNodeList = [
      FocusNode(),
      FocusNode(),
      FocusNode(),
      FocusNode(),
      FocusNode(),
    ];
  }

  @override
  void dispose() {
    super.dispose();

    focusNodeList.forEach((node) {
      node.dispose();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: focusNodeList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(right: 19.0),
            width: 52.0,
            height: 52.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: AppTheme().tertiaryUI,
            ),
            child: TextField(
              onChanged: (_) {
                focusNodeList[index + 1].requestFocus();
              },
              focusNode: focusNodeList[index],
              keyboardType: TextInputType.number,
              cursorColor: AppTheme().secondaryUI,
              maxLength: 1,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: '',
                contentPadding: EdgeInsets.only(
                  left: 25.0,
                  bottom: 18.0,
                ),
                counterText: '',
              ),
              style: TextStyle(
                color: AppTheme().primaryText,
                fontWeight: AppTheme().fontWeights[2],
                fontSize: AppTheme().fontSizes[11],
              ),
            ),
          );
        },
      ),
    );
  }
}
