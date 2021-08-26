import '../../home/models/contacts.dart';

class Transactions {
  final String avatarUrl;
  final String name;
  final String date;
  final String amount;

  Transactions({
    required this.avatarUrl,
    required this.name,
    required this.date,
    required this.amount,
  });
}

List<Transactions> transactions = [
  Transactions(
    avatarUrl: contactsList[0].avatarUrl,
    name: contactsList[0].name,
    date: 'March 10, 7:33 PM',
    amount: '-\$550.00',
  ),
  Transactions(
    avatarUrl: contactsList[1].avatarUrl,
    name: contactsList[1].name,
    date: 'March 09, 4:58 AM',
    amount: '\$278.00',
  ),
  Transactions(
    avatarUrl: contactsList[2].avatarUrl,
    name: contactsList[2].name,
    date: 'February 27, 11:09 PM',
    amount: '\$1250.00',
  ),
];
