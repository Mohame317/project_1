import 'dart:io';

void main() {
  bool running = true;
  
  while (running) {
    print('\n--- Menu ---');
    print('A. Say Hello');
    print('B. Add Grade');
    print('C. Exit');
    print('Choose an option:');
    
    String? choice = stdin.readLineSync();
    choice = choice?.trim().toUpperCase();
    
    switch (choice) {
      case 'A': 
        print('Enter your name:');
        String? name = stdin.readLineSync();
        print('Hello, $name!');
        break;
        
      case 'B': 
        print('Enter grade (0-100):');
        // كود ممكن يحصل فيه خطأ
        try {
          int grade = int.parse(stdin.readLineSync()!);
          
          if (grade == 100) {
            print('Grade: A+');
          } else if (grade >= 95 && grade < 100) {
            print('Grade: A');
          } else if (grade >= 85 && grade < 95) {
            print('Grade: B');
          } else if (grade >= 70 && grade < 85) {
            print('Grade: C');
          } else if (grade >= 0 && grade < 70) {
            print('Grade: F');
          } else {
            print('Not valid - please enter a number between 0-100');
          }
          //catch بتستخدم عشان تمسك الأخطاء (Errors) بدل ما البرنامج ينهار
        } 
        catch (e) {
          print('Invalid input - please enter a number');
        }
        break;
        
      case 'C':  // 
        running = false;
        print('Goodbye!');
        break;
        
      default:
        print('Invalid option - please choose A, B, or C');
    }
  }
}