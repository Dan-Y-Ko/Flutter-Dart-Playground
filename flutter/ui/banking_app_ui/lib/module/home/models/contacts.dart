class Contacts {
  final String name;
  final String avatarUrl;
  final int phoneNumber;

  const Contacts({
    required this.name,
    required this.avatarUrl,
    required this.phoneNumber,
  });
}

const List<Contacts> contactsList = [
  Contacts(
    name: 'Kawsar Ahmed',
    avatarUrl: 'assets/images/avatar_2.png',
    phoneNumber: 415829639069,
  ),
  Contacts(
    name: 'Mahbuba Islam',
    avatarUrl: 'assets/images/avatar_3.png',
    phoneNumber: 415829639069,
  ),
  Contacts(
    name: 'Riyadh',
    avatarUrl: 'assets/images/avatar_4.png',
    phoneNumber: 415829639069,
  ),
];
