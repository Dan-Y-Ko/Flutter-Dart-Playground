import 'dart:io';

void main() {
  // while true
  while (true) {
    // show prompt
    stdout.write('rock, paper, or scissors? (r/p/s) ');

    // read user input from console
    final input = stdin.readLineSync();

    // if input is valid move("r", "p", "s")
    if (input == 'r' || input == 'p' || input == 's') {
      print('Selected: $input');

      // else if input is q
    } else if (input == 'q') {
      // quit the program
      break;

      // else
      // invalid input
    } else {
      print('invalid input');
    }

    // choose the ai move at random

    // compare the player move with the ai move

    // show the result

  }
}
