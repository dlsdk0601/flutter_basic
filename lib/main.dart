void main() {
  List<int> numbers = [1, 3, 5, 7, 9];

  // js 의 reduce 와 같음
  final result = numbers.reduce((prev, next) => prev + next);
  print(result);

  List<String> words = ["A", "B", "C"];
  final result1 = words.reduce((prev, next) => prev + next);
  print(result1);

  // reduce 의 return 타입은 기존 타입과 동일해야한다.
  // 아래는 에러가 난다. string 타입이었기 때문에, return 도 string 이 되야한다.
  // words.reduce((prev, next) => prev.length + next.length);
}
