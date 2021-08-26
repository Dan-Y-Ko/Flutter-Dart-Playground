class Bill {
  final String type;
  final String imageUrl;

  Bill({
    required this.type,
    required this.imageUrl,
  });
}

List<Bill> billList = [
  Bill(imageUrl: 'assets/images/electricity_icon.png', type: 'Electricity'),
  Bill(imageUrl: 'assets/images/internet_icon.png', type: 'Internet'),
  Bill(imageUrl: 'assets/images/education_icon.png', type: 'Education'),
  Bill(imageUrl: 'assets/images/bank_icon.png', type: 'Bank & FI'),
  Bill(imageUrl: 'assets/images/gas_icon.png', type: 'Gas'),
  Bill(imageUrl: 'assets/images/water_icon.png', type: 'Water'),
  Bill(imageUrl: 'assets/images/insurance_icon.png', type: 'Insurance'),
  Bill(imageUrl: 'assets/images/other_icon.png', type: 'Other'),
];
