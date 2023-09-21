void main() {
  List<Map<String, String>> people = [
    {"name": "A", "group": "blackPink"},
    {"name": "B", "group": "BTS"},
    {"name": "C", "group": "BTS"},
    {"name": "D", "group": "blackPink"}
  ];

  print(people);

  // return 값이 true 이면 그냥 넘기고, false 이면 해당 list 에서 삭제 시킨다.
  // js 에서 filter 와 같음
  final result = people.where((element) => element['group'] == "blackPink");
  final result1 = people.where((element) => element['group'] == "BTS");
  print(result);
  print(result1);
}
