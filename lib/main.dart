void main() async {
  // 현재는 이렇게 하면 1 과 2가 같이 하나씩 실행된다.
  calculate(1).listen((event) {
    // print(event); // 1을 넣었으니, 1 * i 를 계속 뱉어낸다.
  });

  calculate(2).listen((event) {
    // print(event);
  });

  playAllStream().listen((event) {
    print(event);
  });
}

Stream<int> playAllStream() async* {
  yield* calculate(1); // 이렇게 작성하면 1 의 모든값을 다 가져올때 까지 기다린다.
  yield* calculate(100); // 1 의 값들이 다 출력되면 100이 실행되서 출력한다.
}

Stream<int> calculate(int number) async* {
  for (int i = 0; i < 5; i++) {
    // 이렇게 하게 되면 i=0 일때만 가능하다. return 되면 함수는 끝나기 때문
    // return i * number;

    // loop 가 다 돌면서 값을 다 받고 싶으면, 함수 타입을 Stream 으로 바꿔준다.
    // async 에 * 를 붙여준다.
    // return 대신에 yield 를 해준다.
    yield i * number;

    await Future.delayed(Duration(seconds: 1)); // 1 초 마다 값을 뱉는다.
  }
}
