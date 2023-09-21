void main() {
  Lecture<String, String> lecture1 = Lecture("123", "Lecture1");
  lecture1.printIdType();

  Lecture<int, String> lecture2 = Lecture(123, "lecture2");
  lecture2.printIdType();
}

// generic - 타입을 외부에서 받아와서 사용
// ts 처럼 <> 안에 타입 사용 가능
class Lecture<T, X> {
  final T id;
  final X name;

  Lecture(this.id, this.name);

  void printIdType() {
    print(id.runtimeType);
  }
}
