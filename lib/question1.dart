void main() {
  List<int> numberList = [
    1,
    2,
    2,
    3,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    9,
    10,
    10,
    10,
    11,
    11,
    1,
    12,
    13
  ];

  print(numberList.toString());
  List<int> nonDuplicatedNumber = numberList.toSet().toList();
  print(nonDuplicatedNumber.toString());
}
