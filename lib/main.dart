void main() async {
  // 당연히 두줄을 한번에 바꿀수 있음.
  final minJi = ("민지", 20);
  final (name, age) = minJi;

  print(name);
  print(age);

  final newJeans = ["민지", "해린"];
  final [String a, String b] = newJeans;
  print(a);
  print(b);

  // rest 는 한번에 한번만 쓸수 있다.
  final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  final [x, y, ..., z] = numbers;
  print(x); // 1
  print(y); // 2
  print(z); // 9

  // _ 를 사용하면 무시 하게 된다.
  final [xx, _, yy, ...rest, zz, _] = numbers;
  print(xx); // 1
  print(yy); // 3
  print(zz); // 8
  print(rest); // [4, 5, 6, 7]

  // Map 은 구조 분해 하려면 키 이름을 꼭 써줘야 한다.
  final minJiMap = {"name": "민지", "age": 19};
  final {"name": name3, "age": age3} = minJiMap;
  print(name3);
  print(age3);

  // class 의 변수도 구조 분해 가능
  final minJiIdol = Idol(name: "민지", age: 18);
  final Idol(name: name4, age: age4) = minJiIdol;
  print(name4);
  print(age4);
}

class Idol {
  final String name;
  final int age;

  Idol({required this.name, required this.age});
}
