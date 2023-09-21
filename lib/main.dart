void main() {
  List<String> blackPink = ["A", "B", "C", "C"];

  print(blackPink);

  // map 으로 형 변환
  print(blackPink.asMap());
  print(blackPink.toSet());

  Map blackPinkMap = blackPink.asMap();

  print(blackPinkMap.keys);
  // (0, 1, 2, 3) => 이런 소괄호는 Iterable, 이걸 List 로 바꾸려면 .toList() 하면됨
  print(blackPinkMap.values); // (A, B, C, C)

  Set blackPinkSet = Set.from(blackPink);
  print(blackPinkSet);

  // list, set, map 은 서로간에 형변환이 자유롭게 가능
}
