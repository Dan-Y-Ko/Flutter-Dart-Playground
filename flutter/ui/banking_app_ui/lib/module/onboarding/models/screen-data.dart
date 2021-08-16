class ScreenData {
  final String image;
  final String headline;
  final String description;
  final double startAngle;
  final double progress;

  const ScreenData({
    required this.image,
    required this.headline,
    required this.description,
    required this.startAngle,
    required this.progress,
  });
}

const List<ScreenData> screenData = [
  ScreenData(
    image: 'assets/images/onboarding_bg_1.png',
    headline: 'Get Bank ID',
    description:
        'Our new service makes it easy for you to work anywhere, there are new features will ready help you.',
    startAngle: -2 * 3.14 / 3,
    progress: 0.4,
  ),
  ScreenData(
    image: 'assets/images/onboarding_bg_2.png',
    headline: 'Integrate With Bank',
    description:
        'Our new service makes it easy for you to work anywhere, there are new features will ready help you.',
    startAngle: 0.0,
    progress: 0.3,
  ),
  ScreenData(
    image: 'assets/images/onboarding_bg_3.png',
    headline: 'Manage Finance',
    description:
        'Our new service makes it easy for you to work anywhere, there are new features will ready help you.',
    startAngle: 2 * 3.14 / 3,
    progress: 0.4,
  ),
];
