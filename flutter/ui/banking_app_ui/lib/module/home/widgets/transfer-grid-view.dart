import '../../../core/utils/theme/theme.dart';
import '../models/transfer.dart';
import 'package:flutter/material.dart';

class TransferGridView extends StatelessWidget {
  const TransferGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 25.0,
            crossAxisSpacing: 25.0,
          ),
          itemCount: transferList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: AppTheme().tertiaryUI,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(transferList[index].imageUrl),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      transferList[index].type,
                      style: TextStyle(
                        color: AppTheme().primaryText,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ));
          },
        ),
      ),
    );
  }
}
