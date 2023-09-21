void main() {
  List<int> numbers = [1, 3, 5, 7, 9];

  // reduce 와 비슷하지만, 어떤 값을 return 해줄지 제네릭으로 정의 해준다.
  // 파라미터로 초기값과 callback 함수를 넣어준다.
  final sum = numbers.fold<int>(0, (prev, next) => prev + next);
  print(sum);

  List<String> words = ["A", "B", "C", "D"];

  final sentence = words.fold<String>("", (prev, next) => prev + next);
  print(sentence);

  final totalLength = words.fold<int>(0, (prev, next) => prev + next.length);
  print(totalLength);
}
