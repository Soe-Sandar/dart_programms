void main() {
  Map<String, int> numberMap = {
    "one": 10000,
    "two": 12000,
    "three": 11000,
    "four": 12300,
    "five": 9000,
    "six": 9500,
    "seven": 10000,
    "eight": 11000,
    "nine": 12000,
    "ten": 10000
  };
  // var total = 0;
  // for (var num in numberMap.values) {
  //   if (num >= 10000) {
  //     total += num;
  //   }
  // }
  // print(total);
  var total=numberMap.values.where((value) => value>=10000).reduce((firstValue, secondValue) => firstValue+secondValue);
  print(total);
}
