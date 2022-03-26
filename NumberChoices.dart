import 'dart:io';
import 'dart:math';

void main() {
  print("Please enter a number");
  int num = int.parse(stdin.readLineSync()!);
  int num2 = num;
  int rev = 0;
  int? choice;
  print("Press 1 for reversing the number");
  print("Press 2 to check if the number is Palindrome");
  print("Press 3 to check if the number is Prime");
  print("Press 4 to check if the number is Armstrong");
  print("Press 5 to find sum of digits");
  print("Press 6 to find sum of odd and even digits");
  choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      while (num2 > 0) {
        rev = (rev * 10) + (num2 % 10);
        num2 = (num2 / 10).truncate();
      }
      print("$rev");
      break;

    case 2:
      while (num2 > 0) {
        rev = (rev * 10) + (num2 % 10);
        num2 = (num2 / 10).truncate();
      }
      if (rev == num) {
        print("It is palindrome");
      } else {
        print("Not palindrome");
      }
      break;

    case 3:
      for (int i = 2; i < num2; i++) {
        if (num2 % i == 0) {
          print("Not Prime!");
          break;
        } else {
          print("Prime!");
          break;
        }
      }
      break;

    case 4:
      String copy = num2.toString();
      int len = copy.length;
      double sum = 0;
      while (num2 != 0) {
        int rem = num2 % 10;
        sum = sum + pow(rem, len);
        num2 = (num2 / 10).truncate();
      }
      if (sum == num) {
        print("It is Armstrong Number");
      } else {
        print("It is not an Armstrong Number");
      }
      break;

    case 5:
      double sum = 0;
      while (num2 > 0) {
        sum = sum + (num2 % 10);
        num2 = (num2 / 10).truncate();
      }
      print("The sum of Digits is $sum");
      break;
    case 6:
      while (num2 > 0) {
        rev = (rev * 10) + (num2 % 10);
        num2 = (num2 / 10).truncate();
      }
      print("$rev");
      int defPlace = 1;
      int sumEven = 0;
      int sumOdd = 0;
      while (rev != 0) {
        if (defPlace % 2 == 0) {
          sumOdd = sumOdd + (rev % 10);
        } else {
          sumEven = sumEven + (rev % 10);
        }
        rev = (rev / 10).truncate();
        defPlace++;
      }
      print("The Even digit sum is $sumEven");
      print("The Odd digit sum is $sumOdd");
      break;

    default:
      print("Invalid Choice");
  }
}
