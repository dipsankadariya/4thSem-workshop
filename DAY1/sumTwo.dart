import 'dart:io';

void main() {
  int? num1 = int.parse(stdin.readLineSync()!);
  int? num2 = int.parse(stdin.readLineSync()!);
  int result = num1 + num2;
  print(result);
}
