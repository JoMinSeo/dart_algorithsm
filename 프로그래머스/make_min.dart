int MakeMin(List<int> A, List<int> B) {
  var answer = 0;

  A.sort();
  B.sort((b, a) => a.compareTo(b));

  for (var i = 0; i < A.length; i++) {
    answer += A[i] * B[i];
  }

  return answer;
}

void main() {
  print(MakeMin([1, 4, 2], [5, 4, 4]));
  print(MakeMin([1, 2], [3, 4]));
}
