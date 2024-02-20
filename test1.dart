import 'dart:io';

void main(List<String> args) {
  stdout.write('a = ');
  int a = int.parse(stdin.readLineSync()??"");
  stdout.write('b = ');
  int b = int.parse(stdin.readLineSync()??"");
  stdout.write('c = ');
  int c = int.parse(stdin.readLineSync()??"");
  int d = a;
  a = b;
  b = c;
  c = d;
  print("a = $a, b = $b, c = $c");
}
