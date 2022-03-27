import 'dart:io';

void main() {
  print("Enter the first string");
  String a = (stdin.readLineSync()!);
  print("Please enter the second string");
  String b = (stdin.readLineSync()!);
  int len1 = a.length;
  int len2 = b.length;
  List a1 = a.split('');
  List b1 = b.split('');
  bool q = true;
  a1.sort();
  b1.sort();
  print(a1);
  print(b1);
  print(len1);
  if (len1 == len2) {
    for (int i = 0; i < len1; i++) {
      if (a1[i] == b1[i]) {
      } else {
        q = false;
      }
    }
    if (q) {
      print("Anagram");
    } else {
      print("Not Anagram");
    }
  } else {
    print("NOT anagram");
  }
}

