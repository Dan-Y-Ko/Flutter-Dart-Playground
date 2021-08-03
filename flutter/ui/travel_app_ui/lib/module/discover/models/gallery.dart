class Gallery {
  final String imageUrl;

  const Gallery({
    required this.imageUrl,
  });
}

const List<Gallery> gallery = [
  Gallery(imageUrl: 'assets/images/gallery_1.png'),
  Gallery(imageUrl: 'assets/images/gallery_2.png'),
  Gallery(imageUrl: 'assets/images/gallery_3.png'),
  Gallery(imageUrl: 'assets/images/gallery_4.jpeg'),
];
