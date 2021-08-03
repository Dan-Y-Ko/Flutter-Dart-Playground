class Categories {
  final String category;
  final String location;
  final String imageUrl;

  const Categories({
    required this.category,
    required this.location,
    required this.imageUrl,
  });
}

const List<Categories> categories = [
  Categories(
    category: 'Pasir',
    location: 'Mesir',
    imageUrl: 'assets/images/pasir.png',
  ),
  Categories(
    category: 'Mountain',
    location: 'Indonesia',
    imageUrl: 'assets/images/mountain.png',
  ),
];
