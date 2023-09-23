void main() async {
  final result = nameAndAge({'name': 'test', 'age': 20});

  print(result);
  print(result.$1); // String 타입 (반환값의 첫번쨰) 를 기준으로 내장함수를 부른다.
  print(result.$2);

  final result2 = getNewJeans();

  for (final item in result2) {
    print(item.$1);
    print(item.$2);
  }

  final result3 = getNewJeansWithType();

  for (final item in result3) {
    print(item.$1);
    print(item.$2);
  }

  final result4 = getNewJeansWithType2();

  for (final item in result4) {
    print(item.name);
    print(item.age);
  }
}

// record
(String, int) nameAndAge(Map<String, dynamic> json) {
  return (json['name'] as String, json['age'] as int);
}

// 원래라면 주석 처럼 처리해야하는데, 새로운 문법으로 가능
// List<Map<String, dynamic>> getNewJeans() {
List<(String, int)> getNewJeans() {
  return [
    ("민지", 20),
    ("혜린", 18),
  ];
}

// 이렇게 타입에 이름을 줄수 있다.
List<(String name, int age)> getNewJeansWithType() {
  return [
    ("민지", 20),
    ("혜린", 18),
  ];
}

List<({String name, int age})> getNewJeansWithType2() {
  return [
    (name: "민지", age: 20),
    (name: "혜린", age: 18),
  ];
}
