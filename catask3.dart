

caesarCipher(String s, int k) {
  //convert string into list of ASCII values
  List<int> charCodes = s.codeUnits;

  List<int> encrypted = [];
  int len = charCodes.length;
  for (int i = 0; i < len; i++) {
    //get ASCII of the current char
    int charcode = charCodes[i];
    //if it uppre case
    if (charcode >= 65 && charcode <= 90) {
      //(charcode - 65 + k)-->normalize char code(0-25) then apply shifting
      //%26 make sure it does not exceed 25
      //+65 back to ASCII
      charcode = (charcode - 65 + k) % 26 + 65;
      //if it lower case
    } else if (charcode >= 97 && charcode <= 122) {
      charcode = (charcode - 97 + k) % 26 + 97;
    }
    //add the new char to the encrypted list
    encrypted.add(charcode);
  }
  //return encrypted.toString();
  return String.fromCharCodes(encrypted);
}

void main() {
  int n = 11; 
  String s = "middle-Outz";
  int k = 2; 

  String encrypString = caesarCipher(s, k);
  print(encrypString);
}
