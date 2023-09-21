void main() {
  List<String> blackPink = ["A", "B", "C"];

  // js 처럼 새로운 리스트를 return 한다.
  final newBlackPink = blackPink.map((x) {
    return 'test $x';
  }).toList();

  print(blackPink);
  print(newBlackPink); // toList() 를 하지 않으면, Iterable 형태로 return 하게 된다.

  final newBlackPink2 = blackPink.map((e) => 'test $e');
  print(newBlackPink2.toList());

  print(blackPink == blackPink); // true
  print(blackPink == newBlackPink); // false
  print(newBlackPink == newBlackPink2); // false
  // => 원소의 값은 같아도, map 은 새로운 리스트를 반환하기에 == 가 성립하지 않음

  String number = '13579'; // [1.jpg, 2.jpg ... ] 로 수정
  final parsed = number.split("").map((e) => '$e.jpg').toList();
  print(parsed);
}
