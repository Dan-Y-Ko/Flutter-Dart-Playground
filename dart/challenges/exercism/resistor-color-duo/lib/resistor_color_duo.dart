class ResistorColorDuo {
  static const _colors = {
    'black': 0,
    'brown': 1,
    'red': 2,
    'orange': 3,
    'yellow': 4,
    'green': 5,
    'blue': 6,
    'violet': 7,
    'grey': 8,
    'white': 9,
  };

  int value(List<String> input) {
    List<String> output = [];

    for (var i = 0; i < input.length; i++) {
      if (i < 2) {
        output.add(_colors[input[i]].toString());
      }

      continue;
    }

    return int.parse(output.join());
  }
}

// class ResistorColorDuo {
//   static const _colors = {
//     'black': 0,
//     'brown': 1,
//     'red': 2,
//     'orange': 3,
//     'yellow': 4,
//     'green': 5,
//     'blue': 6,
//     'violet': 7,
//     'grey': 8,
//     'white': 9,
//   };

//   int value(List<String> list) => _colors[list[0]]! * 10 + _colors[list[1]]!;
// }
