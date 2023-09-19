void main() {
  _Idol blackPink = _Idol("블랙핑크", ["지수", "제니", "리사", "로제"]);

  print(blackPink.firstMember);

  blackPink.firstMember = "교체";

  print(blackPink.firstMember);
}

// getter / setter
// 데이터를 가져올때 / set 할때 사용
// 이름앞에 _를 붙이면 private 처리가 된다. 다른 파일에서 Idol 에 접근하지 못한다.
class _Idol {
  final String name;
  final List<String> members;

  _Idol(this.name, this.members);

  // getter () 괄호를 넣지 않는다.
  // 함수로 만들어도 되는데, 왜 굳이 getter 를 쓰냐
  // => 늬앙스에 차이가 있다. getter 는 여러개의 데이터를 가공해서 사용하고
  // 함수는 로직이 들어간다.
  String get firstMember {
    return this.members[0];
  }

  // setter 무조건 하나의 파라미터를 받는다. 두개는 안됨
  set firstMember(String name) {
    // list 는 final 로 선언되도, 원소 수정은 가능하다.
    // 대신에 list 를 통채로 바꾸는건 불가능
    // this.members = members 불가능
    this.members[0] = name;
  }
}
