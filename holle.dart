import 'dart:io';  
void main() {

  print('Enter your grade:'); 
  String? grade = stdin.readLineSync();
  grade = grade?.trim().toUpperCase();
  
  switch (grade) {
    case 'A':
      print('Excellent!');
      break;
    case 'B':
      print('Good job!');
      break;
    case 'C':
      print('You passed');
      break;
    default:
      print('Invalid grade');
  }
}