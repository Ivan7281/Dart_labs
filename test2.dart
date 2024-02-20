import 'dart:io';

void main() {
  stdout.write('day = ');
  int day = int.parse(stdin.readLineSync()??"");
  
  switch(day) {
    case 1:
    print("Monday");
    case 2:
    print("Tuesday");
    case 3:
    print("Wednesday");
    case 4:
    print("Thursday");
    case 5:
    print("Friday");
    case 6:
    print("Saturday");
    case 7:
    print("Sunday");
    default:
    print("Incorrect day");
  }
}