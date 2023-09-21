void main() {
  TimesTwo tt = TimesTwo(2);

  print(tt.calculate()); // 4

  TimesFour tf = TimesFour(2);

  print(tf.calculate()); // 8
}

// method - function
// override - 덮어쓰다 (우선시하다)
class TimesTwo {
  final int number;

  TimesTwo(this.number);

  // method
  int calculate() {
    // 변수가 하나 뿐일 때는 this 생략 가능
    return number * 2;
  }
}

class TimesFour extends TimesTwo {
  TimesFour(int number) : super(number);

  // override 하고 싶을때는 어노테이션으로 선언
  // 없어도 되긴하지만 가독성을 위해 적어주는게 좋음
  @override
  int calculate() {
    // number 는 부모 클래스에 정의된 변수 이기 때문에
    // this 가 아닌 super 불러온다. 물론 this 도 되긴하지만, 정석은 super
    // return super.number * 4;

    // 부모 클래스에서 연산된 값으로 연산도 가능
    // 여기서는 this 쓰면 안됨. 부모의 method 이기 때문에
    return super.calculate() * 2;
  }
}
