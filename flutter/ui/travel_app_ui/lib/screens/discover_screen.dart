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
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 33.0),
              child: Column(
                children: [
                  Header(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
