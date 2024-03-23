import 'dart:io';
void main() {

  fizzBuzz(15);

  print(performOperation(5, 3, '+'));
  print(performOperation(5, 3, '-')); 
  print(performOperation(5, 3, '*')); 
  print(performOperation(5, 3, '/'));

  plind('helleh');
  
}

//task1
void fizzBuzz(int n) {
  for (int i = 1; i <= n; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print("FizzBuzz");
    } else if (i % 3 == 0) {
      print("Buzz");
    } else if (i % 5 == 0) {
      print("Fizz");
    } else {
      print(i);
    }
  }
}

//task2
double performOperation(double x, double y, String operator) {
  switch (operator) {
    case '+':
      return x + y;
    case '-':
      return x - y;
    case '*':
      return x * y;
    case '/':
      if (y != 0) {
        return x / y;
      } else {
        return double.nan;
      }
    default:
      print("Invalid operator");
      return double.nan; 
  }
}

//task3
void plind(String input){
bool isPalindrome = input == input.split('').reversed.join('') ? true : false;
  print(isPalindrome ? "The input string is a palindrome." : "The input string is not a palindrome.");

}
