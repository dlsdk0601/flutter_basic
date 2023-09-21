void main() {
  Map<String, String> test = {"A": "A", "B": "B", "C": "C"};

  // Map 을 map 돌리면 파라미터를 두개를 받는다 (key, value)
  // Map 으로 새로운 Map 만들때
  final result = test.map((key, value) => MapEntry("test $key", "TEST $value"));
  print(result);
  print(test);

  // Map 의 key, value 따로 구분 지어서 작업 할때
  final keys = test.keys.map((e) => "Test $e").toList();
  final values = test.values.map((e) => "Test $e").toList();
  print(keys);
}
