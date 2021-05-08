class SumIntegers {
  int sumIntegers(int a, int b) {
    var answer = 0;

    if (a > b) {
      for (int i = b; i <= a; i++) {
        answer += i;
      }
      return answer;
    } else {
      for (int i = a; i <= b; i++) {
        answer += i;
      }
    }
    return answer;
  }
}

void main() {
  print(SumIntegers().sumIntegers(3, 5));
  print(SumIntegers().sumIntegers(3, 3));
  print(SumIntegers().sumIntegers(5, 3));
}
