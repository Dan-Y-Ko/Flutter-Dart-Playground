class ResistorColor {
  static const _colors = [
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white',
  ];

  List<String> get colors => _colors;

  int colorCode(String color) {
    return _colors.indexOf(color);
  }
}
