void main() {
  print("---------- Idol ----------");
  Idol apink = Idol(name: "에이핑크", membersCount: 5);

  apink.sayName();
  apink.sayMembersCount();

  print("---------- BOYGROUP ----------");
  BoyGroup bts = BoyGroup("BTS", 7);

  bts.sayName();
  bts.sayMembersCount();
  bts.sayMale();

  print("---------- GIRLGROUP ----------");
  GirlGroup redVelvet = GirlGroup("레드벨벳", 5);

  redVelvet.sayName();
  redVelvet.sayMembersCount();
  redVelvet.sayFemale();

  print("---------- TYPE COMPARISON ----------");
  print(apink is Idol); // true
  print(apink is BoyGroup); // false
  print(apink is GirlGroup); // false

  print("---------- TYPE COMPARISON2 ----------");
  print(bts is Idol); // true
  print(bts is BoyGroup); // true
  print(bts is GirlGroup); // flase

  // 상속을 받게 되면 자식 클래스와 부모 클래스와 타입이 같아짆다.
}

// 상속 - ingeritance
class Idol {
  String name;
  int membersCount;

  Idol({required this.name, required this.membersCount});

  void sayName() {
    print("저는 ${this.name} 입니다.");
  }

  void sayMembersCount() {
    print("${this.name}은 ${this.membersCount}명의 멤버가 있습니다.");
  }
}

class BoyGroup extends Idol {
  BoyGroup(String name, int membersCount)
      : super(name: name, membersCount: membersCount);

  void sayMale() {
    print("남자 아이돌");
  }
}

class GirlGroup extends Idol {
  GirlGroup(String name, int membersCount)
      : super(name: name, membersCount: membersCount);

  void sayFemale() {
    print("여자 아이돌");
  }
}
