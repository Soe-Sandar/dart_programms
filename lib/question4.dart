void main() {
  Map<String, int?> number = {
    "one": 1,
    "two": 2,
    "three": 3,
    "four": null,
    "five": 5,
    "six": null,
    "seven": 7,
    "eight": 8
  };

  number.removeWhere((key, value) => value == null);
  print(number.keys.join(","));
}
