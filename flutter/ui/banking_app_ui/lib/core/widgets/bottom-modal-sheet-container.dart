import 'topup-input.dart';
import 'package:flutter/material.dart';

import 'confirmation-bottom-modal.dart';

class BottomModalSheetContainer extends StatefulWidget {
  const BottomModalSheetContainer({Key? key}) : super(key: key);

  @override
  _BottomModalSheetContainerState createState() =>
      _BottomModalSheetContainerState();
}

class _BottomModalSheetContainerState extends State<BottomModalSheetContainer> {
  int _selectedIndex = 0;
  late List<Widget> _screens;

  void _onItemTapped(BuildContext context, int? index) {
    setState(() {
      _selectedIndex = index!;
    });
  }

  @override
  void initState() {
    super.initState();

    _screens = [
      TopupInput(
        onTap: (context, id) => _onItemTapped(context, 1),
      ),
      ConfirmationBottomModal(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return _screens[_selectedIndex];
  }
}
