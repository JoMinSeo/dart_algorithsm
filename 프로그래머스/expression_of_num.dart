int ExpressionOfNum1(int num) {
  // 완전탐색 이용
  var answer = 0;

  var sum;
  for (var i = 1; i <= num; i++) {
    sum = 0;
    for (var j = i; j <= num; j++) {
      sum += j;
      if (sum == num) {
        answer++;
        j = num + 1;
      }
    }
  }

  return answer;
}

int ExpressionOfNum2(int num) {
  // 정수론 정리 응용
  var answer = 0;
  // 주어진 자연수를 연속된 자연수로 표현할 수 있는 가짓수는 주어진 자연수의 홀수 약수의 개수와 같다.
  for (int i = 1; i <= num; i += 2) {
    if (num % i == 0) {
      answer++;
    }
  }

  return answer;
}

void main() {
  print("1번: ${ExpressionOfNum1(15)}");
  print("2번: ${ExpressionOfNum2(15)}");
}
