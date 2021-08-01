import 'package:flutter/material.dart';

import '../widgets/header.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Header(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
