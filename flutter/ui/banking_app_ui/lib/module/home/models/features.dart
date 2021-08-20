class Features {
  final String title;
  final String logo;

  const Features({
    required this.title,
    required this.logo,
  });
}

const List<Features> features = [
  Features(title: 'Top Up', logo: 'assets/images/top_up.png'),
  Features(title: 'Bill', logo: 'assets/images/bill.png'),
  Features(title: 'Transfer', logo: 'assets/images/transfer.png'),
  Features(title: 'Request', logo: 'assets/images/request.png'),
];
