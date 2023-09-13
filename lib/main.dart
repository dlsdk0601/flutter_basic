import 'package:flutter/material.dart';

void main() {
  // 변수 variable
  // string type
  var name = "헬로우 월드";
  var name2 = "레드벨렛";
  print(name);
  print(name2);

  // var 로 선언된 변수는 값 변경 가능
  name = "플러터";

  // 위에서 name 이라는 변수를 선언 했기에, 다시 선언 할 수 없다.
  // var name = "수정";

  // 정수, Integer
  int number1 = 10;
  print(number1);

  int number2 = 15;
  print(number2);

  // 정수니까 당연히 마이너스 가능
  int number3 = -20;

  // 정수 연산
  print(number1 + number2); // 25
  print(number1 - number2); // -5
  print(number1 / number2); // 0.6666...
  print(number1 * number2); // 150

  // 실수, double
  double num1 = 2.5;
  double num2 = 0.5;

  print(num1 + num2); // 3
  print(num1 - num2); // 2
  print(num1 / num2); // 5
  print(num1 * num2); // 1.25

  // Boolean
  bool isTrue = true;
  bool isFalse = false;

  // String
  String nam = "red";
  String nam2 = "good";

  print(nam + nam2); // redgood
  print(nam + " " + nam2); // red good

  // js 에서 백틱 같은 기능이 가능하다
  print("${nam} ${nam2}"); // red good

  /*
  * 그럼 var 와 String 의 차이는?
  * java 와 마찬가지로 var 는 오른쪽 값을 통해서 데이터 타입을 유추한다.
  * */

  // var 를 사용 했을때, 타입을 출력 받을 수 있다. 해당 함수는 runtime 에서 어떤 타입인지 출력 해준다.
  print(nam.runtimeType);

  // dynamic
  dynamic a = "goog";
  print(a); // good

  var b = 1;
  print(b); // b

  /*
  * 이러면 var 와 dynamic 의 차이는 뭘까.?
  * runtimeTYpe 을 사용해도 같은 타입이 나오게 된다.
  * dynamic 은 다른 형태의 타입으로 수정이 가능하다.
  * var 는 한번 선언된 값의 타입으로 지정되서 타입을 못바꾼다.
  * */

  // 가능
  a = 1;
  // 불가능
  // b = "string";

  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
