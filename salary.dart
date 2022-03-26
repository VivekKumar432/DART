import 'dart:io';

void main() {
  double tax;
  print("Please enter your Basic Salary");
  double BasicSal = double.parse(stdin.readLineSync()!);
  double HRA = (50 / 100) * BasicSal;
  print("HRA is INR $HRA");
  double DA = (20 / 100) * BasicSal;
  print("DA is INR $DA");
  double TA = (30 / 100) * BasicSal;
  print("TA is INR $TA");
  double MA = (25 / 100) * BasicSal;
  print("MA is INR $MA");
  double PF = (5 / 100) * BasicSal;
  print("PF is INR $PF");
  double Gross = BasicSal + HRA + DA + TA + MA;
  print("Your Gross Salary is  INR $Gross");
  if (Gross < 500000) {
    tax = 0;
  } else if (Gross > 500000 && Gross < 699999) {
    tax = (10 / 100) * Gross;
  } else if (Gross > 700000 && Gross < 899999) {
    tax = (20 / 100) * Gross;
  } else {
    tax = (30 / 100) * Gross;
  }
  print("Applicable tax on your income is INR $tax");
  double NetSalary = Gross - PF - tax;
  print("Your Net Salary is INR $NetSalary");
}
