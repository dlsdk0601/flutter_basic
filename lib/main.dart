void main() {
  // Operation 의 타입을 가지는 add 함수를 operation 에 저장 시키는 것.
  // 즉 operation 은 add 에서 정의한 함수가 들어간다.
  Operation operation = add;

  int result = operation(10, 20, 30);

  print(result);

  operation = subtract;

  int result2 = operation(30, 20, 10);

  print(result2);

  int result3 = calculate(30, 40, 50, add);

  print(result3);

  int result4 = calculate(30, 40, 50, subtract);

  print(result4);
}

// typedef
// 함수의 타라미터와 return 타입을 정의한 type
typedef Operation = int Function(int x, int y, int z);

// 더하기 함수
int add(int x, int y, int z) => z + y + z;

// 빼기 함수
int subtract(int x, int y, int z) => z - y - z;

// 계산
int calculate(int x, int y, int z, Operation operation) {
  return operation(x, y, z);
}
