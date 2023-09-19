void main() {
  // 생성자에 const 로 선언한다.
  Idol blackPink = Idol("BlackPink", ["A", "B", "C", "D"]);

  // 이렇게 변수를 바꿀 수도 있는데, 못바꾸게 하는게 안전하고 좋다.
  // class 안에 변수에 final 을 넣어둔다.
  // blackPink.name = "changed";
  print(blackPink.name);
  blackPink.sayHello();

  Idol blackPink2 = Idol("BlackPink", ["A", "B", "C", "D"]);
  // 사람이 봤을때는 blackPink 와 같다고 본다. 대입한 값이 같으니까,
  // 근데 코드에서는 두개가 다르다.

  print(blackPink == blackPink2); // false

  // 근데 웃긴건 const 로 인스턴스를 만들경우 같다고 나온다.
  Idol blackPink3 = const Idol("BlackPink", ["A", "B", "C", "D"]);
  Idol blackPink4 = const Idol("BlackPink", ["A", "B", "C", "D"]);

  print(blackPink3 == blackPink4); // true
}

class Idol {
  // final 로 선언하게 되면 인스턴스 밖에서 수정이 불가능
  final String name;
  final List<String> memebers;

  // const 를 붙이면 인스턴스를 만들때도 앞에 const 를 붙일수 있다.
  const Idol(this.name, this.memebers);

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
