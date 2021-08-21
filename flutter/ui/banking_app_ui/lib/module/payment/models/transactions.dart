import 'package:banking_app_ui/module/home/models/contacts.dart';

class Transactions {
  final String avatarUrl;
  final String name;
  final String Date;
  final String amount;

  Transactions({
    required this.avatarUrl,
    required this.name,
    required this.Date,
    required this.amount,
  });
}

List<Transactions> _transactions = [
  Transactions(
    avatarUrl: contactsList[0].avatarUrl,
    name: contactsList[0].name,
    Date: 'March 10, 7:33 PM',
    amount: '-\$550.00',
  ),
  Transactions(
    avatarUrl: contactsList[1].avatarUrl,
    name: contactsList[1].name,
    Date: 'March 09, 4:58 AM',
    amount: '\$278.00',
  ),
  Transactions(
    avatarUrl: contactsList[2].avatarUrl,
    name: contactsList[2].name,
    Date: 'February 27, 11:09 PM',
    amount: '\$1250.00',
  ),
];
