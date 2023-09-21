void main() {
  Set blackPinkSet = {"A", "B", "C", "D"};

  final newSet = blackPinkSet.map((e) => "test $e").toList();
  print(newSet);
}
