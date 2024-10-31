import 'dart:io';

class GradeCalculator {
  int marks;

  GradeCalculator(this.marks);

  String calculateGrade() {
    if (marks < 0 || marks > 100) {
      return "Invalid marks entered.";
    } else if (marks < 50) {
      return "F";
    } else if (marks < 60) {
      return "D";
    } else if (marks < 70) {
      return "C";
    } else if (marks < 80) {
      return "B";
    } else {
      return "A";
    }
  }
}

void main() {
  print("Enter your marks (0 - 100): ");
  
  // Getting user input
  String? input = stdin.readLineSync();
  
  // Parsing input to integer and handling potential errors
  int? marks;
  try {
    marks = int.parse(input!);
  } catch (e) {
    print("Invalid input. Please enter a valid number.");
    return;
  }

  // Create an instance of GradeCalculator
  GradeCalculator calculator = GradeCalculator(marks);
  
  // Calculate grade
  String grade = calculator.calculateGrade();
  
  // Display results
  print("Your marks are $marks and your grade is $grade.");
}
