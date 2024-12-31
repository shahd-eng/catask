//import 'dart:io';

class Solution {
  bool isPalindrome(int x) {
    if (x < 0) return false;

    String numtoString = x.toString();
    int len = numtoString.length;
    for (int i = 0; i < len ~/ 2; i++) {
      if (numtoString[i] != numtoString[len - 1 - i]) {
        return false;
      }
    }
    return true;
  }
}

void main() {
  int x1 = 121;
  int x2 = -121;
  int x3 = 10;
  Solution S = Solution(); 
  print('${S.isPalindrome(x1)}'); 
  print('${S.isPalindrome(x2)}'); 
  print('${S.isPalindrome(x3)}'); 
 
}
