void main() {
  BoyGroup bts = BoyGroup("BTS");
  GirlGroup newJeans = GirlGroup("newJeans");
  // IdolInterface test = IdolInterface("test"); 에러 난다.

  bts.sayName();
  newJeans.sayName();

  print(bts is IdolInterface); // true
  print(bts is BoyGroup); // true
  print(bts is GirlGroup); // false
}

// interface
// class 를 만들때 해당 interface 의 형태를 같게 하기 위해 사용
// 필수적으로 넣어야하는 변수나 method 를 정의 할 수 있다.
// abstact 를 넣으면 추상화가 되어서 해당 interface 로 instance 를 만들지 못한다.
// IdolInterface 로 instance 를 만들려는 실수를 방지
abstract class IdolInterface {
  String name;

  IdolInterface(this.name);

  // abstract 를 사용하면 함수의 body 를 적지 않아도된다.
  void sayName();
}

class BoyGroup implements IdolInterface {
  String name;

  BoyGroup(this.name);

  void sayName() {
    print("$name");
  }
}

class GirlGroup implements IdolInterface {
  String name;

  GirlGroup(this.name);

  void sayName() {
    print("$name");
  }
}
