void main() {
  int marks = 22;
  String grade;

  if (marks >= 0 && marks < 50) {
    grade = "F";
  } else if (marks >= 50 && marks <= 59) {
    grade = "D";
  } else if (marks >= 60 && marks <= 69) {
    grade = "C";
  } else if (marks >= 70 && marks <= 79) {
    grade = "B";
  } else if (marks >= 80 && marks <= 100) {
    grade = "A";
  } else {
    grade = "Invalid marks entered.";
  }

  print("Your marks are $marks and your grade is $grade.");
}
