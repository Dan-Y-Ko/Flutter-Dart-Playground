class Trip {
  final String title;
  final String caption;
  final String imageUrl;
  final bool isFavorite;

  const Trip({
    required this.title,
    required this.caption,
    required this.imageUrl,
    required this.isFavorite,
  });
}

const List<Trip> trips = [
  Trip(
    title: 'Greenland',
    caption: 'Greenland, North',
    imageUrl: 'assets/images/greenland.svg',
    isFavorite: true,
  ),
  Trip(
    title: 'Holand Kincir',
    caption: 'Holland, Europe',
    imageUrl: 'assets/images/mountain-forest-lake-water.jpeg',
    isFavorite: false,
  ),
];
