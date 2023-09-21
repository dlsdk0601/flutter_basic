void main() {
  Employee test1 = Employee("test1");
  Employee test2 = Employee("test2");

  test1.name = "change1";
  test2.name = "change2";
  test1.printNameAndBuilding(); // change1, null
  test2.printNameAndBuilding(); // change2, null

  Employee.building = "타워";

  test1.printNameAndBuilding(); // change1, 타워
  test2.printNameAndBuilding(); // change2, 타워
  // builing 은 클래스에 귀속 되기때문에, 값을 정해주면 해당 클래스로 부터 생긴 instance 까지
  // 모두 반영이 된다.

  Employee.printBuilding(); // 타워
}

class Employee {
  // static 은 instance 에 귀속되지 않고, class 에 귀속된다.
  static String? building;
  String name;

  Employee(this.name);

  void printNameAndBuilding() {
    print("$name, $building");
  }

  // 이친구도 instance 가 아닌 class 에 귀속되는 method 이다.
  static void printBuilding() {
    print("$building");
  }
}
