void main() {
  List<int> even = [2, 4, 6, 8];
  List<int> odd = [1, 3, 5, 7];

  // cascading operator
  // js 에서 복사와 같다.
  print([...even, ...odd]);
  print(even == [...even]); // false (복사도 완전 다른 배열을 반환한다.)

  // 리스트 와 Map 은 자유도가 너무 높다. string 에 오타가 나도 모른다.
  // 그래서 class 를 사용해서 구조화해서 다루는게 안전하다.
  final List<Map<String, String>> people = [
    {"name": "A", "group": "blackPink"},
    {"name": "B", "group": "BTS"},
    {"name": "C", "group": "BTS"},
    {"name": "D", "group": "blackPink"}
  ];

  // 당장에 에러가 나는 이유는 name 과 group 이 무조건 있을거라는 보장이 없어서 이다.
  // 그래서 이 값이 무조건 있다는 ! 를 붙여서 에러를 없애준다.
  final parsedPeople =
      people.map((x) => Person(name: x["name"]!, group: x["group"]!)).toList();
  print(parsedPeople);

  // class 형태로 바꾸고 난 후
  for (Person person in parsedPeople) {
    // 자동 완성 이 편해짐
    print(person.group);
  }

  final bts = parsedPeople.where((x) => x.group == "BTS").toList();
  print(bts);

  // 이렇게 한번에 연쇄적으로 로직 가능
  final result = people
      .map((e) => Person(name: e["name"]!, group: e["group"]!))
      .where((element) => element.group == "BTS");
  print(result);
}

class Person {
  final String name;
  final String group;

  Person({required this.name, required this.group});

  @override
  String toString() {
    // print(parsedPeople) 의 출력 값을 볼때 출력되는 문자열이 바뀜
    return "Person(name: $name, group: $group)";
  }
}
