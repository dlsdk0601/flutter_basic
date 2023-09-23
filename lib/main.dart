void main() {}

// class 를 final 로 선언 가능
// extends, implement, mixin 으로 사용 불가능하다.
// 근데 같은 파일 안에서는 가능
final class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});
}

// base 로 선언 하면 extends 는 가능, implement 는 불가능
// base, sealed, final 로 선언된 클래스만 extend 가 가능하다.
// 당연히 final 은 같은 파일에서만 가능
base class Person2 {
  final String name;
  final int age;

  Person2({required this.name, required this.age});
}

// interface 로 선언하면 implement 만 가능하다.
interface class Person3 {
  final String name;
  final int age;

  Person3({required this.name, required this.age});
}

// sealed => abstract + final
// 패턴 매칭을 사용 할수 있다.
sealed class Person4 {}

class Idol extends Person4 {}

class Engineer extends Person4 {}

class Chef extends Person4 {}

// 이렇게 입력하면 Person 을 상속받는 클래스중에 Chef 가 있으므로 그걸 캐치해서 에러를 낸다.
// 때문에 default 처리를 해주던가, Chef 클래스를 추가해준다.
String whoIsHe(Person person) =>
    switch (person) { Idol i => "아이돌", Engineer e => "엔지니어", _ => " 나머지" };
