int DotProduct(List<int> a, List<int> b) {
  int answer = 0;

  for (var i = 0; i < a.length; i++) {
    answer += a[i] * b[i];
  }

  return answer;
}

void main() {
  print(DotProduct([1, 2, 3, 4], [-3, -1, 0, 2]));
  print(DotProduct([-1, 0, 1], [1, 0, -1]));
}
