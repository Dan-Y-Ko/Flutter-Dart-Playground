import 'dart:io';

import 'dart:math';

enum Move { rock, paper, scissors }

void main() {
  final rng = Random();

  // while true
  while (true) {
    // show prompt
    stdout.write('rock, paper, or scissors? (r/p/s) ');

    // read user input from console
    final input = stdin.readLineSync();

    // if input is valid move("r", "p", "s")
    if (input == 'r' || input == 'p' || input == 's') {
      var playerMove;

      if (input == 'r') {
        playerMove = Move.rock;
      } else if (input == 'p') {
        playerMove == Move.paper;
      } else {
        playerMove = Move.scissors;
      }

      final random = rng.nextInt(3);
      final aiMove = Move.values[random];

      print('you played: $playerMove');
      print('ai played: $aiMove');

      if (playerMove == aiMove) {
        print('it\'s a draw');
      } else if (playerMove == Move.rock && aiMove == Move.scissors ||
          playerMove == Move.paper && aiMove == Move.rock ||
          playerMove == Move.scissors && aiMove == Move.paper) {
        print('you win');
      } else {
        print('you lose');
      }

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
