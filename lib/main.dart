void main() {}

// mixin
// extends 나 with 사용 불가
// class 는 on 키워드를 사용 할수 없다. => mixin class 도 on 키워드를 사용 할수 없다.
mixin class AnimalMixin {
  String bark() {
    return "bark";
  }
}

class Dog with AnimalMixin {}
