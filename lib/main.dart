import 'dart:async';

void main() async {
  final controller = StreamController();
  // final stream = controller.stream; 하나의 리스너 함수를 위해
  final stream = controller.stream.asBroadcastStream(); // 여러개의 리스너 함수를 위해

  // where 로 stream 에 들어오는 값에 따라 커스텀 가능
  final streamListener1 = stream.where((event) => event % 2 == 0).listen((val) {
    print("Listener 1: $val");
  });

  final streamListener2 = stream.where((event) => event % 2 == 1).listen((val) {
    print("Listener 2: $val");
  });

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
}
