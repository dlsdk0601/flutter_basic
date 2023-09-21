void main() async {
  // Future - 미래
  // 미래에 받아올 값
  Future<String> name = Future.value("test");
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  // delayed - 지연되다. => js 의 setTimeOut 과 같다.
  // 1 - 지연할 시간
  // 2 - 지연 시간 지난후 실행함 콜백
  Future.delayed(Duration(seconds: 2), () {
    // print("delay");
  });

  final result1 = await addNumbers(1, 1);
  final result2 = await addNumbers(2, 2);

  print("result1: $result1");
  print("result2: $result2");
  print("result1 + result2 = ${result1 + result2}");
}

// 원래 void 인데, js 에서 promise 처럼 해주려면 Future 로 감싼다.
Future<int> addNumbers(int num1, int num2) async {
  print("계산 시작: $num1 + $num2");

  // async - await 를 사용하면 비동기를 동기처럼 사용 가능
  await Future.delayed(Duration(seconds: 2), () {
    print("계산완료: ${num1 + num2}");
  });

  print("함수 완료");
  return num1 + num2;
}
