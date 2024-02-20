import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()??"");
  int m = int.parse(stdin.readLineSync()??"");
  var message = stdin.readLineSync();
  print(createTable(n, m, message));
}

List createTable(int n, int m, var message) {
var two = List.generate(n, (i) => List.filled(m, message));
return two;
}
