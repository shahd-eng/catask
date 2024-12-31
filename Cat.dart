
void main() {
  List<int> numbers = [10, 20, 23, 45, 96, 10, 21, 22, 21];
  List<int> uniqueList = numbers.toSet().toList();
  //[10, 20, 23, 45, 96, 21, 22]
  List<int> reversedList = [];
  for (int i = uniqueList.length - 1; i >= 0; i--) {
    reversedList.add(uniqueList[i]);
    //[22, 21, 96, 45, 23, 20, 10]
  }
  print(reversedList);
}
