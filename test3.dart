import 'dart:io';

void main() {
  int n = 20;

  print(" Table ");

  while(n > 0) {
    if (n % 2 == 0) {
      stdout.write("$n | ");
    }
    else {
      print(n);
    }
    n -= 1;
  }
}