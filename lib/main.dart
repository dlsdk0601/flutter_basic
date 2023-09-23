void main() {
  // Validation
  final minJi = ("민지", 19);

  // 타입을 실수 했을때 구조 분해는 빌드할떄는 모르지만, 런타임에서 에러가 난다.
  final (name as String, age as int) = minJi;

  print(name);
  print(age);

  switcher("b");
  switcher("aaa");
  switcher(["1", "2"]);
  switcher([10, 20]);
  switcher([1, 2, 3]);
  switcher([4, 5, 6]);
  switcher([4, 5, 6, 7]);
  switcher([10, "20"]);

  print(switcher2(5, true));
  print(switcher2(8, true));
  print(switcher2(7, true));
  print(switcher2(7, false));

  forLooper();

  ifMatcher();
}

void switcher(dynamic any) {
  switch (any) {
    case "aaa":
      print("aaa");
    case ["1", "2"]:
      print("match: [1, 2]");
    case [_, _, _]:
      print("match: [_, _, _]");
    case [int a, int b]:
      print("match: [int $a, int $b]");
    default:
      print("no match");
  }
}

// 스위치 문도 애로우 함수 가능
String switcher2(dynamic val, bool condition) => switch (val) {
      5 => "match: 5",
      // 두가지 조건을 적을때는 when 으로 사용한다
      7 when condition => "match 7 and true",
      _ => "no match"
    };

void forLooper() {
  final List<Map<String, dynamic>> members = [
    {"name": "민지", "age": 20},
    {"name": "해린", "age": 19},
  ];

  for (final member in members) {
    print(member["name"]);
    print(member["age"]);
  }

  print("=================");

  // loop 안에서도 구조 분해 가능
  for (final {"name": name, "age": age} in members) {
    print(name);
    print(age);
  }
}

void ifMatcher() {
  final minji = {"name": "민지", "age": 20};

  print("=================");
  if (minji case {"name": String name, "age": int age}) {
    print(name);
    print(age);
  }

  // 여기는 출력이 안된다. 왜냐하면 타입이 다르기 떄문
  // python 에서 walrus 의 기능과 비슷
  if (minji case {"name": String name, "age": String age}) {
    print(name);
    print(age);
  }
}
