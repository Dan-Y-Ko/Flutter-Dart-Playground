class Transfer {
  final String type;
  final String imageUrl;

  Transfer({
    required this.type,
    required this.imageUrl,
  });
}

List<Transfer> transferList = [
  Transfer(imageUrl: 'assets/images/bank_icon2.png', type: 'KR Bank Account'),
  Transfer(imageUrl: 'assets/images/bkash_icon.png', type: 'Transfer to bKash'),
  Transfer(imageUrl: 'assets/images/nagad_icon.png', type: 'Transfer to Nagad'),
  Transfer(imageUrl: 'assets/images/bank_icon.png', type: 'Transfer to Bank'),
  Transfer(imageUrl: 'assets/images/bank_icon3.png', type: 'Other Bank Accont'),
  Transfer(imageUrl: 'assets/images/ibbl_icon.png', type: 'Transfer to IBBL'),
  Transfer(
      imageUrl: 'assets/images/favorite_icon.png', type: 'Favorite Transfer'),
  Transfer(
      imageUrl: 'assets/images/transfer_history_icon.png',
      type: 'Transfer History'),
];
