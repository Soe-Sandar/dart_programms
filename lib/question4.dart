void main() {
  Map<String, int?> Number = {
    "one": 1,
    "two": 2,
    "three": 3,
    "four": null,
    "five": 5,
    "six": null,
    "seven": 7,
    "eight": 8
  };

  Number.removeWhere((key, value) => value == null);
  print(Number.keys);
}
