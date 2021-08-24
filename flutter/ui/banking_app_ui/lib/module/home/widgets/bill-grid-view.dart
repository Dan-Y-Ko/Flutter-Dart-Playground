import 'package:banking_app_ui/core/utils/theme/theme.dart';
import 'package:banking_app_ui/module/home/models/bill.dart';
import 'package:flutter/material.dart';

class BillGridView extends StatelessWidget {
  const BillGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: SizedBox(
        height: 190.0,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 10.0,
          ),
          itemCount: billList.length,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 63.0,
              height: 88.0,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 5.0),
                    height: 63.0,
                    width: 63.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: AppTheme().tertiaryUI,
                    ),
                    child: Image.asset(
                      billList[index].imageUrl,
                    ),
                  ),
                  Text(
                    billList[index].type,
                    style: TextStyle(
                      color: AppTheme().primaryText,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
