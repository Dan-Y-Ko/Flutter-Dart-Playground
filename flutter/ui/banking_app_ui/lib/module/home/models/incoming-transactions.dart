import '../../top-up/models/contacts.dart';

class IncomingTransactions {
  final String avatarUrl;
  final String name;
  final String paymentType;
  final String amount;
  final String time;

  const IncomingTransactions({
    required this.avatarUrl,
    required this.name,
    required this.paymentType,
    required this.amount,
    required this.time,
  });
}

List<IncomingTransactions> incomingTransactions = [
  IncomingTransactions(
    avatarUrl: contactsList[0].avatarUrl,
    name: contactsList[0].name,
    paymentType: 'Credit Card',
    amount: '\$68.28',
    time: '08:20 am',
  ),
  IncomingTransactions(
    avatarUrl: contactsList[1].avatarUrl,
    name: contactsList[1].name,
    paymentType: 'Debit Card',
    amount: '\$90.37',
    time: '09:44 am',
  ),
  IncomingTransactions(
    avatarUrl: contactsList[2].avatarUrl,
    name: contactsList[2].name,
    paymentType: 'Credit Card',
    amount: '\$82.56',
    time: '10:44 am',
  ),
];
