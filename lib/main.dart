import 'package:flutter/material.dart';

void main() {
  // n/a nullable
  // 변수 타입에 ?를 붙여준다
  String name = "good";
  String? name2 = "red";

  // 불가능
  // name = null;
  // 가능
  // name2 = null;

  print(name);
  print(name2);

  // n/n non-nullable
  // ! 도 있는데 이건 절대 null 이 아니라는걸 암시한다.
  // 위에서 name2 가 null 이라고 했기 때문에 에러가 난다.
  // 위에서 name2가 string 타입이면 경고가 뜬다. ! 가 의미 없다고
  print(name2!);

  // DateTime => 시간 데이터 타입
  DateTime now = DateTime.now();
  print(now); // 현재 날짜와 시간이 찍힌다.
  DateTime now2 = DateTime.now();

  // 해당 시간이 찍히는 시간은 해석기가 해당 코드를 읽을 때다.
  // 앱이 실행될때 딱 찍히는게 아니다. => now != now2

  // final => 이뮤터블 하게 바껴서 변경 불가능한 상수
  final String name3 = "good";
  print(name3);
  // 불가능
  // name3 = "red"

  // const => 역시나 상수라는걸 의미해서 변경 불가능
  const String name4 = "black";
  print(name4);

  // 불가
  // name4 = "white";

  /*
  * 그럼 final 과 const 의 차이는 뭘까?
  * final 과 const 의 공통 특징은 데이터 타입을 명시 하지 않아도 된다.
  * 그럴꺼 같은게, 어차피 상수 니까 한번 선언 되면 수정 할 수 없다.
    final name5 = "string";
     const name6 = "string"; => 둘다 가능
  *
  * 그럼 차이는 뭐냐
  * final 은 빌드 타임을 몰라도 되지만, const 는 빌드 타임을 알아야한다.
  * const DateTime now2 = DateTime.now();
  * 를 하기 되면 에러가 난다.
  *
  * 그러면 빌드 타입이 뭐냐
  * => 빌드가 될때의 시간이다.
  * 즉, const 로 선언하면 에러가 나는 이유는 DateTime.now 는 코드가 실행되야 알수 있기 때문에
  * const 로 선언하면 에러가 난다.
  *
  * 쉽게 말해서 당장 알 수 있는 값들만 const 로 가능
  * */

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
