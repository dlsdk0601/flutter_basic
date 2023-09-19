void main() {
  // flutter 에서도 new 키워드를 안넣어도 된다.
  // Idol blackPink = Idol();
  Idol blackPink = Idol("BlackPink", ["A", "B", "C", "D"]);

  print(blackPink.name);
  blackPink.sayHello();

  Idol bts = Idol("BTS", ["E", "F", "G"]);
  print(bts.name);
  bts.sayHello();

  Idol test = Idol.fromList([
    ["E", "F", "G"],
    "test"
  ]); // 이렇게 생성자를 생성해도 된다.
  // 생성자를 두개 만들 수 있다.
}

// 아이돌 클래스
class Idol {
  // 먼저 정의 하는 방법
  // String name = "블랙핑크";
  // List<String> memebers = ["A", "B", "C", "D"];

  // 생성자에서 파라미터를 받아서 대입할 변수
  String name;
  List<String> memebers;

  // contructor (positional)
  // Idol(String name, List<String> members)
  //     : this.name = name,
  //       this.memebers = members;

  // 생성자를 이렇게 간단하게 넣을 수 있다. 순서만 맞다면 파라미터를 바로 대입한다.
  Idol(this.name, this.memebers);

  // named contructor
  Idol.fromList(List values)
      : this.memebers = values[0],
        this.name = values[1];

  void sayHello() {
    print("hi ${this.name}");
  }

  void introduce() {
    print("hello ${this.memebers}");
  }
}
