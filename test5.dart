
import 'dart:math';
import 'dart:io';

void main(List<String> args) {
  stdout.write('n = ');
  int n = int.parse(stdin.readLineSync()??"");

  stdout.write('m = ');
  int m = int.parse(stdin.readLineSync()??"");

  List battlefield = List.generate(n, (i) => List.filled(m, 0));
  int ammunition = fillBattlefield(battlefield, n, m);

  stdout.write('Ammunition = ');
  print(ammunition);

  stdout.write('Map = ');
  print(battlefield);
  
  startGame(ammunition, battlefield);
}

int fillBattlefield(List array, int n, int m) {
  Random ship = Random();
  int ammunition = 0;

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < m; j++) {
      array[i][j] = ship.nextInt(2);

      if (array[i][j] == 1) {
        ammunition++;
      }
    }
  }
  return ammunition;
}

void startGame(int ammunition, List array) {
  int destroyedShips = 0;
  for (int i = 0; i < ammunition; i++) {
    print("\nLaunch the rocket!");

    stdout.write('Coordinate x = ');
    int x = int.parse(stdin.readLineSync()??"");
    stdout.write('Coordinate y = ');
    int y = int.parse(stdin.readLineSync()??"");

    if (array[x][y] == 1) {
      destroyedShips++;
      print("\nYou hit it");
    }
    else {
      print("\nYou missed");
    }
  }
  if (destroyedShips == ammunition) {
    print("\nYou win!");
  }
  else {
    print("\nYou lose!");
  }
}